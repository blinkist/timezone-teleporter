# frozen_string_literal: true

require "timezone_finder"
require "logger"

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

    def teleport(lat, lng)
      TIMEZONE_LOCATIONS[timezone_at(lat, lng)]
    rescue StandardError => e
      configuration.logger.error "Location couldn't be anonymized with TimezoneTeleporter: #{e.message}"

      [lat, lng]
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
