# Oceans

Give your users location data some more privacy!

Oceans transforms your coordinates into random points on the ocean while keeping the utc timezone.

Oceans is build on top of [timezone](https://github.com/panthomakos/).

## Configure

### Configure with Geonames

```ruby
Oceans.configure(:geonames) do |c|
  c.username = 'geonames_username'
end
```

### Configure with Google

```ruby
Oceans.config(:google) do |c|
  c.api_key = 'google_api_key'
  c.client_id = 'google_client_id' # if using 'Google for Work'
end
```

## Oceanize

```ruby
Oceans.oceanize(-34.92771472817, 138.477082746287)
# => [-34.92771808058, 138.477041423321]
```

