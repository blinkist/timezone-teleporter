# frozen_string_literal: true

require "spec_helper"

RSpec.describe Oceans do
  context ".configure" do
    context "with geonames" do
      subject do
        described_class.configure(:geonames) { |c| c.username = ENV["GEONAMES_USERNAME"] }
      end

      it "configures timezone" do
        expect { subject }.to_not raise_error
      end
    end

    context "with google api" do
      subject do
        described_class.configure(:google) { |c| c.api_key = ENV["GOOGLE_API_KEY"] }
      end

      it "configures timezone" do
        expect { subject }.to_not raise_error
      end
    end
  end

  context ".oceanize" do
    context "with geonames" do
      subject { instance.oceanize(coordinates) }

      before do
        described_class.configure(:geonames) { |c| c.username = ENV["GEONAMES_USERNAME"] }
      end

      Oceans::OCEAN_LOCATIONS.values.each do |coordinates|
        it "returns correct coordinates (#{coordinates})" do
          expect(Oceans.oceanize(*coordinates)).to eq coordinates
        end
      end
    end

    context "with google" do
      subject { instance.oceanize(coordinates) }

      before do
        described_class.configure(:google) { |c| c.api_key = ENV["GOOGLE_API_KEY"] }
      end

      Oceans::OCEAN_LOCATIONS.values.each do |coordinates|
        it "returns correct coordinates (#{coordinates})" do
          expect(Oceans.oceanize(*coordinates)).to eq coordinates
        end
      end
    end

    context "with unknown utc offset" do
      before do
        allow(Timezone).to receive_message_chain(:lookup, :utc_offset)
          .and_return(9_000)
      end

      it "returns nearest timezone" do
        expect(Oceans.oceanize(0, 0)).to eq Oceans::OCEAN_LOCATIONS[7200]
      end
    end
  end
end
