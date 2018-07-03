# Oceans

Add some privacy to your users location data!

Oceans transforms your coordinates into locations on the ocean while staying in the same UTC time zone and keeping the same UTC time offset ([list of UTC time offsets](https://en.wikipedia.org/wiki/List_of_UTC_time_offsets)).

* Uses the gem [timezone_finder](https://github.com/gunyarakun/timezone_finder) for time zone lookup.
* Uses the gem [timezone](https://github.com/panthomakos/timezone).

## Usage

### Configure

```ruby
Oceans.configure do |c|
  c.silent_mode = true
  c.use_proximity_algorithm = true
  c.delta_degree = 1
end
```

* **silent_mode**: if set to true, no errors are raised (default is true).
* **use_proximity_algorithm**: if the timezone is not found, Oceans tries to find the closest timezone within +-1 delta_degree lng and +-1 delta_degree lat (default is true).
* **delta_degree**: defines the radius for the proximity algorithm (default is 1).

### Oceanize

Gives you random coordinates somewhere on the ocean in the same UTC time zone.

```ruby
Oceans.oceanize(52.520007, 13.404954)
# => [13.497359, 2.114399]
```

NOTE: If time zone is not found, `Oceans.oceanize` will return the origin coordinates unless silent_mode is set to false.

## Development

After checking out the repo, run bin/setup to install dependencies. Then, run `rake spec` to run the tests (make sure the environment variables `GEONAMES_USERNAME` and `GOOGLE_API_KEY` are set). You can also run bin/console for an interactive prompt that will allow you to experiment.

To release a new version, update the version number in version.rb, and then run bundle exec rake release, which will create a git tag for the version, push git commits and tags, and push the .gem file to rubygems.org.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Grantinee project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/blinkist/oceans/blob/master/CODE_OF_CONDUCT.md).
