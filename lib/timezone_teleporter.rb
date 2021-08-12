# frozen_string_literal: true

require "timezone_finder"

require_relative "timezone_teleporter/timezone_locations"
require_relative "timezone_teleporter/configuration"
require_relative "timezone_teleporter/errors"

module TimezoneTeleporter
  class << self
    def configure
      self.configuration ||= Configuration.new
      yield(configuration)
    end

    def configuration
      @configuration ||= Configuration.new
    end

    def teleport(lat_or_tz, lng=nil)
      if lng.nil?
        teleport_timezone(lat_or_tz)
      else
        teleport_location(lat_or_tz, lng)
      end
    end

    def teleport_location(lat, lng)
      teleport_timezone(timezone_at(lat, lng))
    rescue StandardError => e
      raise e unless configuration.silent_exceptions
    end

    def teleport_timezone(timezone)
      location = TIMEZONE_LOCATIONS[timezone]

      raise TimeZoneNotFoundError unless location || configuration.silent_exceptions

      location
    end

    def timezone_at(lat, lng)
      timezone_name = timezone_finder.timezone_at(lat: lat, lng: lng)

      timezone_name ||= timezone_finder.closest_timezone_at(lat: lat, lng: lng, delta_degree: configuration.delta_degree) if configuration.use_proximity_algorithm

      raise TimeZoneNotFoundError unless timezone_name

      timezone_name
    end

    private

    def timezone_finder
      @timezone_finder ||= TimezoneFinder.create
    end
  end
end
