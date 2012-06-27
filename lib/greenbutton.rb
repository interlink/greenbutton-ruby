# greenbutton.rb
#

require 'greenbutton/parser'

module GreenButton
  class InvalidFileFormat < Exception
  end

  class UnsupportedFileFormat < Exception
  end

  class OverlapInTime < Exception
  end

  class GreenButtonEntry
    attr_accessor :start_date, :end_date, :duration, :usage, :cost

    def initialize(start_date, duration, usage, cost)
      @start_date, @end_date, @duration, @usage, @cost =
        start_date, start_date + duration, duration, usage, cost
    end

    def <=>(other)
      res = self.start_date <=> other.start_date
      return res if res != 0
      self.duration <=> other.duration
    end
  end

  class GreenButtonData
    include Enumerable

    def initialize(source)
      @entries ||= []
      begin
        Parser.new(source) { |entry| @entries << GreenButtonEntry.new(*entry) } 
      end if source.is_a?(String) || source.is_a?(IO)

      @entries = source if source.is_a?(Array)

      # sort data and make sure there are no overlaps
      begin 
        @entries.sort!
        @entries.drop(1).inject(@entries.first.end_date) do |last_date, d|
          raise OverlapInTime if d.start_date < last_date
          d.end_date
        end
      end unless @entries.empty?
    end

    def each
      if block_given?
        @entries.each { |e| yield e }
      else
        Enumerator.new(self, :each)
      end
    end

    def start_date
      @entries.first.start_date unless @entries.empty?
    end

    def end_date
      @entries.last.end_date unless @entries.empty?
    end

    def total_cost
      total_for(:cost, nil, nil)
    end

    def total_usage
      total_for(:usage, nil, nil)
    end

    def cost_for_period(start_date, end_date)
      total_for(:cost, start_date, end_date)
    end

    def usage_for_period(start_date, end_date)
      total_for(:usage, start_date, end_date)
    end

    private
    def total_for(type, start_date, end_date)
      raise ArgumentError, "End data cannot be before start date" unless start_date.nil? || end_date.nil? || start_date < end_date

      # some fast paths
      ents = case
             when end_date.nil? && start_date.nil?
               @entries
             when end_date.nil?
               @entries.select { |e| e.start_date >= start_date }
             when start_date.nil?
               @entries.select { |e| e.end_date <= end_date }
             else
               @entries.select { |e| e.start_date >= start_date && e.end_date <= end_date }
             end

      ents.inject(0.0) { | sum, elem | sum += elem.send(type) }
    end
  end
end
