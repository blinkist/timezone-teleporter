# frozen_string_literal: true

require "spec_helper"

RSpec.describe TimezoneTeleporter do
  context "::TIMEZONE_LOCATIONS" do
    let(:excluded_locations) { ["Asia/Yangon", "Asia/Famagusta"] }

    let(:locations) {
      TimezoneTeleporter::TIMEZONE_LOCATIONS.reject { |t, _c| excluded_locations.include? t }
    }

    it "locations matches timezones" do
      locations.each do |timezone, coordinates|
        expect(TimezoneTeleporter.timezone_at(*coordinates)).to eq(timezone)
      end
    end
  end
end
