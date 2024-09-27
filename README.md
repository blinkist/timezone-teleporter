> [!CAUTION]
> This gem is no longer maintained

![TimezoneTeleporter](./timezone_teleporter.png)

# TimezoneTeleporter

TimezoneTeleporter anonymizes users' GPS coordinates by generating random coordinates in the same time zone. These new coordinates may be used then safely by 3rd party systems to process the users' location, without disclosing their actual physical position, providing more privacy, and anonymity to users.

## Dependencies

* Uses the gem [timezone_finder](https://github.com/gunyarakun/timezone_finder) for time zone lookup.

## Installation

Add this line to your application's Gemfile:

    gem 'timezone_teleporter'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install timezone_teleporter

### Configuration

TimezoneTeleporter can be configured in an initializer:

```ruby
TimezoneTeleporter.configure do |c|
  c.silent_exceptions       = true
  c.use_proximity_algorithm = true
  c.delta_degree            = 1
end
```

Use following configuration flags to customise the library's behaviour:

* `silent_exceptions`: if set to true, no errors are raised and `teleport` returns nil in case no location could be found (default is true),
* `use_proximity_algorithm`: if the timezone is not found, TimezoneTeleporter tries to find the closest timezone within +-1 delta_degree longitude and +-1 delta_degree latitude (default is true),
* `delta_degree`: defines the radius for the proximity algorithm (default is 1).

### Usage

##### Teleport with coordinates or timezone
Use `TimezoneTeleporter.teleport(lat, lng)` or `TimezoneTeleporter.teleport(timezone)` to generate randomized coordinates inside the same time zone by passing coordinates:

```ruby
TimezoneTeleporter.teleport(52.520007, 13.404954)
# => [51.165691, 10.451526]
```

```ruby
TimezoneTeleporter.teleport("Europe/Berlin")
# => [51.165691, 10.451526]
```

**Note: If time zone is not found, `TimezoneTeleporter.teleport` will return nil if silent_exceptions is set to true.**

To get the best result, use both versions together with silent exceptions:

```ruby
TimezoneTeleporter.configure { |c| c.silent_exceptions = true }

TimezoneTeleporter.teleport("Europe/Berlin") || TimezoneTeleporter.teleport(52.520007, 13.404954)
# => [51.165691, 10.451526]
```

## Development

After checking out the repo, run bin/setup to install dependencies. Then, run `rake spec` to run the tests. You can also run bin/console for an interactive prompt that will allow you to experiment.

To release a new version, update the version number in version.rb, and then run bundle exec rake release, which will create a git tag for the version, push git commits and tags, and push the .gem file to rubygems.org.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the TimezoneTeleporter project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/blinkist/timezone-teleporter/blob/master/CODE_OF_CONDUCT.md).
