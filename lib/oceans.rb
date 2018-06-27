require "timezone"

require_relative "oceans/errors"
require_relative "oceans/ocean_points"

module Oceans
  class << self
    def configure(service, &c)
      Timezone::Lookup.config(service, &c)
    end

    def oceanize(lat, long)
      timezone = Timezone.lookup lat, long

      utc_offset = timezone.utc_offset

      POINTS[utc_offset] || POINTS[POINTS.keys.reverse.find { |i| i < utc_offset }]
    rescue Timezone::Error::InvalidZone
      [lat, long]
    end
  end
end
