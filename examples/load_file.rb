# Load the given file and print information about it
#
$:.unshift File.dirname(__FILE__) + "/../lib"

require 'greenbutton'

if ARGV.empty?
  puts "Please specify a greenbutton xml file to load."
  Process.exit
end

begin
  puts "Loading #{ARGV[0]} ..."
  data = GreenButton::GreenButtonData.new(open(ARGV[0]))

  puts data
rescue Exception => e
  puts "Error while processing data: "
  print "    "
  case e
  when GreenButton::InvalidFileFormat
    puts "The file doesn't seem to be in the correct format. #{e.message}"
  when GreenButton::UnsupportedFileFormat
    puts "The file format is not supported. #{e.message}"
  when GreenButton::OverlapInTime
    puts "The reading time stamps overlap. #{e.message}"
  end
end

