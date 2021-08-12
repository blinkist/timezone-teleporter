# frozen_string_literal: true

module TimezoneTeleporter
  class Configuration
    attr_accessor :silent_exceptions, :use_proximity_algorithm, :delta_degree

    def initialize
      @silent_exceptions = true
      @use_proximity_algorithm = true
      @delta_degree = 1
    end
  end
end
