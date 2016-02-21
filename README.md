# Jace Beleren

![jace](http://www.wizards.com/mtg/images/daily/wallpapers/WP_JacetheMindSculptor_2560x1600.jpg)

`jace_beleren` is a gem that wraps the `api.deckbrew.com` API


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jace_beleren'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jace_beleren

## Usage

**Instantiate a client**

    require 'jace_beleren'
    @client = JaceBeleren::API.new

**Get all the cards **

    @client.get_all_cards

**Get a specific card**

    @client.get_card('gold-myr')

**Get sets**

    @client.get_sets

**Get types**

    @client.get_types

**Get super types**

    @client.get_supertypes

**Get sub types**

    @client.get_subtypes

**Get colors**

    @client.get_colors

**Search for cards**

    @client.search('gold')

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/lucas-aragno/jace_beleren.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

