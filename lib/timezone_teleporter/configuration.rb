# frozen_string_literal: true

module TimezoneTeleporter
  class Configuration
    attr_accessor :silent_mode
    attr_accessor :use_proximity_algorithm
    attr_accessor :delta_degree

    def initialize
      @silent_mode = true
      @use_proximity_algorithm = true
      @delta_degree = 1
    end
  end
end
