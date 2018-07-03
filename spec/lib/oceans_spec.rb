# frozen_string_literal: true

require "spec_helper"

RSpec.describe Oceans do
  it 'has a version number' do
    expect(Oceans::VERSION).not_to be nil
  end

  context ".oceanize" do
    subject { described_class.oceanize(lat, lng) }

    before do
      Oceans.configure { |c| c.silent_mode = false }
    end

    example_data = JSON.parse(File.read("spec/fixtures/example_coordinates.json"))

    example_data.each do |utc_offset, coordinates|
      it "returns correct coordinates #{coordinates}" do
        expect(Oceans.oceanize(*coordinates)).to eq Oceans::OCEAN_LOCATIONS[utc_offset.to_i]
      end
    end
  end
end
