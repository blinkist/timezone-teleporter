require "timezone"
require "timezone_finder"

require_relative "oceans/ocean_coordinates"
require_relative "oceans/configuration"
require_relative "oceans/errors"

module Oceans
  class << self
    def configure
      self.configuration ||= Configuration.new
      yield(configuration)
    end

    def configuration
      @configuration ||= Configuration.new
    end

    def oceanize(lat, lng)
      time = Time.now
      timezone = timezone_at(lat, lng)

      raise TimeZoneNotFoundError if timezone.is_a?(Timezone::NilZone)

      utc_offset = timezone.utc_offset(time) - (timezone.dst?(time) ? 3600 : 0)

      ocean_coordinates_for utc_offset
    rescue StandardError => e
      raise e unless configuration.silent_mode

      [lat, lng]
    end

    private

    def timezone_finder
      @timezone_finder ||= TimezoneFinder.create
    end

    def timezone_at(lat, lng)
      timezone_name = timezone_finder.certain_timezone_at(lat: lat, lng: lng)

      if configuration.use_proximity_algorithm
        timezone_name ||= timezone_finder.closest_timezone_at(lat: lat, lng: lng, delta_degree: configuration.delta_degree)
      end

      Timezone[timezone_name]
    end

    def ocean_coordinates_for(utc_offset)
      OCEAN_LOCATIONS[utc_offset] || closest_ocean_coordinates_for(utc_offset)
    end

    def closest_ocean_coordinates_for(utc_offset)
      OCEAN_LOCATIONS[OCEAN_LOCATIONS.keys.reverse.find { |i| i < utc_offset }]
    end
  end
end
