Introduction
------------

This is a simple ruby gem for parsing [GreenButton] data from either an XML file or an XML file loaded into a string.

Basic Usage
-----------

Basically, this gem provides a convenient way to load and inspect GreenButton data.  It will take care or normalizing
energy usage to kWh and cost to USD by taking into account the multiplier.

You can use this library like this:

```ruby
data = GreenButton::GreenButtonData.new("mydata.xml")
data.each do |e|
    puts "#{e.start_date} -> #{e.end_date}: Cost: #{e.cost}, Usage: #{e.usage}"
end

puts "Data starts from: #{data.start_date} and goes till: #{data.end_date}"
puts "Total cost: #{data.total_cost}, Total usage: #{data.total_usage}"
```

You can apply simple Enumerable operations to GreenButtonData as well:

```ruby
total_cost = data.reduce(0) { |sum, e| sum + e.cost }

all_costs = data.map { |e| e.cost }
# all_costs = [1.21, 2.32, 1.34 ...]
```

Work in Progress
----------------

This library is a work in progress and new features are being added constantly. Stay tuned!

[GreenButton]: http://www.greenbuttondata.org/
