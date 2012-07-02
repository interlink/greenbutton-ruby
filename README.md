[![Build Status](https://secure.travis-ci.org/Interlink/greenbutton-ruby.png)](http://travis-ci.org/Interlink/greenbutton-ruby)

Introduction
------------

This is a simple ruby gem for parsing [GreenButton] data from either an XML file or an XML file loaded into a string.

Basic Usage
-----------

Basically, this gem provides a convenient way to load and inspect GreenButton data.  It will take care or normalizing
energy usage to kWh and cost to USD by taking into account the multiplier and other related parameters specified in the
provided XML.

You can use this library like this:
```ruby
GreenButton::GreenButtonData.new("mydata.xml") do | entries |
    entries.each |e|
        puts e
    end
end
```

If you prefer not to provide a block during initialization, you can always access loaded
data like this:
```ruby
data = GreenButton::GreenButtonData.new("mydata.xml")
data.each do |e|
    puts e
end
```

The loaded data object and the entries there-in print information about loaded data:
```ruby
# print sumary of loaded data-set
puts data
# prints something like:
# 2012-07-02 01:16:47 -0500 to: 2012-07-02 01:18:27 -0500, usage: 275.00kWh, cost: $550.00
```

This is a more flexible way of accessing data since it allows simple Enumerable operations:
```ruby
total_cost = data.reduce(0) { |sum, e| sum + e.cost }

all_costs = data.map { |e| e.cost }
# all_costs = [1.21, 2.32, 1.34 ...]
```

License
-------

This software is provided under the MIT license.  Please read the accompanied LICENSE for more details.

Work in Progress
----------------

This library is a work in progress and new features are being added constantly. Stay tuned!

Thanks to
---------

This project has been sponsored by [Interlink Network Systems].  Thanks!

[GreenButton]: http://www.greenbuttondata.org/
[Interlink Network Systems]: http://www.ilinknet.com/
