# Oceans

## Configure


### Configure with Geonames

```ruby
Oceans.configure(:geonames) do |c|
  c.username = 'your_geonames_username_goes_here'
end
```

### Configure with Google

```ruby
Timezone::Lookup.config(:google) do |c|
  c.api_key = 'your_google_api_key_goes_here'
  c.client_id = 'your_google_client_id' # if using 'Google for Work'
end
```

## Oceanize

```ruby
Oceans.oceanize(-34.92771472817, 138.477082746287)
# => [-34.92771808058, 138.477041423321]
```

