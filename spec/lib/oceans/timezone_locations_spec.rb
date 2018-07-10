# frozen_string_literal: true

require "spec_helper"

RSpec.describe Oceans do
  context "::TIMEZONE_LOCATIONS" do
    it "locations matches timezones" do
      Oceans::TIMEZONE_LOCATIONS.each do |timezone, coordinates|
        expect(Oceans.timezone_at(*coordinates)).to eq(timezone)
      end
    end
  end
end
