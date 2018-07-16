# TimezoneTeleporter

Add some privacy to your users location data!

TimezoneTeleporter transforms your coordinates into some random coordinates while staying in the same time zone.

* Uses the gem [timezone_finder](https://github.com/gunyarakun/timezone_finder) for time zone lookup.
* Uses the gem [timezone](https://github.com/panthomakos/timezone).

## Usage

### Configure

```ruby
TimezoneTeleporter.configure do |c|
  c.silent_mode = true
  c.use_proximity_algorithm = true
  c.delta_degree = 1
end
```

* **silent_mode**: if set to true, no errors are raised (default is true).
* **use_proximity_algorithm**: if the timezone is not found, TimezoneTeleporter tries to find the closest timezone within +-1 delta_degree lng and +-1 delta_degree lat (default is true).
* **delta_degree**: defines the radius for the proximity algorithm (default is 1).

### teleport

Gives you a location somewhere in the same timezone.

```ruby
TimezoneTeleporter.teleport(52.520007, 13.404954)
# => [13.497359, 2.114399]
```

NOTE: If time zone is not found, `TimezoneTeleporter.teleport` will return the origin coordinates unless silent_mode is set to false.

## Development

After checking out the repo, run bin/setup to install dependencies. Then, run `rake spec` to run the tests. You can also run bin/console for an interactive prompt that will allow you to experiment.

To release a new version, update the version number in version.rb, and then run bundle exec rake release, which will create a git tag for the version, push git commits and tags, and push the .gem file to rubygems.org.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Grantinee project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/blinkist/TimezoneTeleporter/blob/master/CODE_OF_CONDUCT.md).
