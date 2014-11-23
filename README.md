# IPprefixLookup

State: Alpha

Lookup the prefix based on a IP address
The database provided is based on the BGP table

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'IPprefixLookup'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install IPprefixLookup

## Usage

    $ require 'IPprefixLookup'
    $ prefix = IPprefixLookup.lookup('8.8.8.8')
    $p prefix

## Contributing

1. Fork it ( https://github.com/JeroenBo/IPprefixLookup/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
