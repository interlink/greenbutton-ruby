
require 'nokogiri'

module GreenButton
  class GreenButton::Parser
    def initialize(string_or_io)
      begin
        doc = Nokogiri::XML(string_or_io) do |config|
          config.strict.noent
        end
        ns = { 'atom' => "http://www.w3.org/2005/Atom",
               'espi' => "http://naesb.org/espi" }

        uom = Integer(doc.xpath("//espi:ReadingType/espi:uom", ns).text)
        multiplier = Integer(doc.xpath("//espi:ReadingType/espi:powerOfTenMultiplier", ns).text)

        begin
          tz, dstOffset = 
            Integer(doc.xpath("//espi:LocalTimeParameters/espi:tzOffset", ns).text),
            Integer(doc.xpath("//espi:LocalTimeParameters/espi:dstOffset", ns).text)
        rescue TypeError
          tz, dstOffset = 0, 0
        end

        doc.xpath("//espi:IntervalBlock/espi:IntervalReading", ns).each do |reading|
          ts, duration, value, cost = 
            Integer(reading.xpath("espi:timePeriod/espi:start", ns).text),
            Integer(reading.xpath("espi:timePeriod/espi:duration", ns).text),
            Integer(reading.xpath("espi:value", ns).text),
            Integer(reading.xpath("espi:cost", ns).text)

          entry = [makeTime(ts, tz, dstOffset), duration,
                   valueInkWh(value, uom, multiplier), costInUSD(cost)]
          yield entry if block_given?
        end
      rescue Nokogiri::XML::SyntaxError, ArgumentError, TypeError => e
        raise InvalidFileFormat
      end
    end

    private
    def valueInkWh(value, uom = 72, multiplier = 0)
      raise UnsupportedFileFormat, "Only Watt-hours unit of measure are supported at this time" if uom != 72
      0.001 * if multiplier != 0 then 
        value * Math.pow(multiplier) 
      else 
        value
      end
    end

    def costInUSD(cost)
      return cost * 0.00001
    end

    def makeTime(unix, tz, dstOffset)
      Time.at(unix).utc + tz + dstOffset
    end
  end
end

