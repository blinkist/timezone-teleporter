# frozen_string_literal: true

module TimezoneTeleporter
  class Configuration
    attr_accessor :use_proximity_algorithm
    attr_accessor :delta_degree

    attr_accessor :logger

    def initialize
      @use_proximity_algorithm = true
      @delta_degree = 1

      @logger = ::Logger.new(nil)
    end
  end
end
