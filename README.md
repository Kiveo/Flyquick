# FlyQuick

FlyQuick is a small cli type application designed to allow pilots to quickly select an airport and see a basic card of information needed for approaches to said airport.
Instead of scanning gps or online databases for up-to-date and pertinent info, let FlyQuick do it for you!

Pilot friendly: Pilots will be able to quickly type in 2 numbers, sequentially, and see information that would take longer using on board aircraft GPS.
-This notion is exponentially more beneficial to pilot time saving when compared to multiple airports in quick succession. Modern A/C GPS are cumbersome comparatively for finding simple/quick flight data.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'FlyQuick'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install FlyQuick

## Usage

The FlyQuick app runs from its executable: bin/flyquick. Once initialized, the cli will generate a listing of states to select amongst.
Select a state using the numerical value assigned to it (Example: 10. Florida.     User then inputs "10" ).
After a state is selected, a new list will be generated. The list is also numbered and selected in the same way. The new list will displays airports specific to the selected state.
Example:
3. Arizona
10. Florida
<<User enters "10" and presses enters
Airports are listed and selected the same way.

A user may exit at any time by typing "exit". Once a user is within the airport selection menu, the user may type "restart" to return to the state selection menu.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Kiveo/FlyQuick.
