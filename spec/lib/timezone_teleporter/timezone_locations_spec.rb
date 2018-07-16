# frozen_string_literal: true

require "spec_helper"

RSpec.describe TimezoneTeleporter do
  context "::TIMEZONE_LOCATIONS" do
    it "locations matches timezones" do
      TimezoneTeleporter::TIMEZONE_LOCATIONS.each do |timezone, coordinates|
        expect(TimezoneTeleporter.timezone_at(*coordinates)).to eq(timezone)
      end
    end
  end
end
