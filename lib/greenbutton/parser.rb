
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

        uom = parse_safe_int(doc.xpath("//espi:ReadingType/espi:uom", ns).text, "UOM")
        multiplier = parse_safe_int(doc.xpath("//espi:ReadingType/espi:powerOfTenMultiplier", ns).text, "Power of Ten Multiplier")

        begin
          tz, dstOffset = 
            parse_safe_int(doc.xpath("//espi:LocalTimeParameters/espi:tzOffset", ns).text, "Timezone Offset"),
            parse_safe_int(doc.xpath("//espi:LocalTimeParameters/espi:dstOffset", ns).text, "Daylight Saving Offset")
        rescue TypeError
          tz, dstOffset = 0, 0
        end

        doc.xpath("//espi:IntervalBlock/espi:IntervalReading", ns).each do |reading|
          ts, duration, value, cost = 
            parse_safe_int(reading.xpath("espi:timePeriod/espi:start", ns).text, "Reading start time"),
            parse_safe_int(reading.xpath("espi:timePeriod/espi:duration", ns).text, "Reading end time"),
            parse_safe_int(reading.xpath("espi:value", ns).text, "Reading value"),
            parse_safe_int(reading.xpath("espi:cost", ns).text, "Reading cost")

          entry = [makeTime(ts, tz, dstOffset), duration,
                   valueInkWh(value, uom, multiplier), costInUSD(cost)]
          yield entry if block_given?
        end
      rescue Nokogiri::XML::SyntaxError => e
        raise InvalidFileFormat, e.message
      rescue ArgumentError => e
        raise InvalidFileFormat, "One of the required fields are missing"
      end
    end

    private
    def parse_safe_int(value, title)
      begin
        Integer(value)
      rescue ArgumentError
        raise InvalidFileFormat, "Missing #{title}"
      end
    end

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

