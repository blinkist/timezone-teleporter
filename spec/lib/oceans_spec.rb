# frozen_string_literal: true

require "spec_helper"

RSpec.describe Oceans do
  it 'has a version number' do
    expect(Oceans::VERSION).not_to be nil
  end

  context ".timezone_coordinates" do
    before do
      Oceans.configure { |c| c.silent_mode = false }
    end

    it "coordinates matches timezones" do
      Oceans.timezone_coordinates.each do |timezone, coordinates|
        expect(Oceans.timezone_at(*coordinates)).to eq(timezone)
      end
    end
  end
end
