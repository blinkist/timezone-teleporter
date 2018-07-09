# frozen_string_literal: true

require "json"

module Oceans
  FILE_PATH = File.expand_path(File.dirname(__FILE__) + "/../../data/timezone_coordinates.json")

  class << self
    def timezone_coordinates
      @timezone_coordinates ||= JSON.parse(File.read(FILE_PATH))
    end
  end
end
