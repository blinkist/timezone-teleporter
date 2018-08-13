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

    def teleport(input)
      if input.is_a? Array
        teleport_location input
      elsif input.is_a? String
        teleport_timezone input
      end
    end

    def teleport_location(location)
      TIMEZONE_LOCATIONS[timezone_at(*location)]
    rescue StandardError => e
      raise e unless configuration.silent_mode

      [*location]
    end

    def teleport_timezone(timezone)
      location = TIMEZONE_LOCATIONS[timezone]

      raise TimeZoneNotFoundError unless location || configuration.silent_mode

      location
    end

    def timezone_at(lat, lng)
      timezone_name = timezone_finder.timezone_at(lat: lat, lng: lng)

      if configuration.use_proximity_algorithm
        timezone_name ||= timezone_finder.closest_timezone_at(lat: lat, lng: lng, delta_degree: configuration.delta_degree)
      end

      raise TimeZoneNotFoundError unless timezone_name

      timezone_name
    end

    private

    def timezone_finder
      @timezone_finder ||= TimezoneFinder.create
    end
  end
end
