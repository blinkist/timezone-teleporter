require "timezone"

require_relative "oceans/ocean_points"

module Oceans
  class << self
    attr_reader :configuration
    attr_reader :ignore_invalid_timezones

    def configure(service, silent_mode: true, &config)
      @configuration = Timezone::Lookup.config(service, &config)
    end

    def oceanize(lat, long)
      timezone = Timezone.lookup lat, long

      utc_offset = timezone.utc_offset

      POINTS[utc_offset] || nearest_timezone(utc_offset)
    rescue Timezone::Error::InvalidZone
      raiseTimezone::Error::InvalidZone unless ignore_invalid_timezones

      [lat, long]
    end

    private

    def nearest_timezone
      POINTS[POINTS.keys.reverse.find { |i| i < utc_offset }]
    end
  end
end
