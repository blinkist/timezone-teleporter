# Oceans

Add some privacy to your users location data!

Oceans transforms your coordinates into random points on the ocean while staying in the same UTC timezone.

* Uses the gem [timezone](https://github.com/panthomakos/timezone) for timezone lookup.

## Usage

### Configure

You can use Oceans eaither with Geonames or with Google:

#### Configure with Geonames

```ruby
Oceans.configure(:geonames) do |c|
  c.username = 'geonames_username'
end
```

#### Configure with Google

```ruby
Oceans.config(:google) do |c|
  c.api_key = 'google_api_key'
  c.client_id = 'google_client_id' # if using 'Google for Work'
end
```

### Oceanize

`Oceanize` gives you random coordinates somewhere on the ocean in the same UTC timezone.

```ruby
Oceans.oceanize(-34.92771472817, 138.477082746287)
# => [-34.92771808058, 138.477041423321]
```

NOTE: If Oceans can't find a timezone, `oceanize` returns the origin coordinates.

## Development

After checking out the repo, run bin/setup to install dependencies. Then, run rake spec to run the tests. You can also run bin/console for an interactive prompt that will allow you to experiment.

To release a new version, update the version number in version.rb, and then run bundle exec rake release, which will create a git tag for the version, push git commits and tags, and push the .gem file to rubygems.org.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
