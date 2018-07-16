# frozen_string_literal: true

require "spec_helper"

TEST_LOCATION_PATH = "./spec/fixtures/test_locations.json"

RSpec.describe TimezoneTeleporter do
  it 'has a version number' do
    expect(TimezoneTeleporter::VERSION).not_to be nil
  end

  let(:coordinates) { [52.5200, 13.4050] }

  context ".teleport" do
    subject { TimezoneTeleporter.teleport(*coordinates) }

    context "with test data" do
      let(:test_locations) { JSON.parse(File.read(TEST_LOCATION_PATH)) }

      it "new locations match locations from TIMEZONE_LOCATIONS" do
        test_locations.each do |timezone, coordinates|
          expect(TimezoneTeleporter.teleport(*coordinates)).to eq TimezoneTeleporter::TIMEZONE_LOCATIONS[timezone]
        end
      end

      it "new locations are different from input locations" do
        test_locations.each do |_timezone, coordinates|
          expect(TimezoneTeleporter.teleport(*coordinates)).not_to eq coordinates
        end
      end
    end

    context "when in silent mode" do
      before do
        TimezoneTeleporter.configure do |c|
          c.silent_mode = true
        end
      end

      context "called with proper coordinates" do
        it "returns correct coordinates in timezone" do
          expect(subject).to eq TimezoneTeleporter::TIMEZONE_LOCATIONS[TimezoneTeleporter.timezone_at(*coordinates)]
        end
      end

      context "when timezone is not found" do
        before do
          allow(TimezoneTeleporter).to receive(:timezone_at)
            .and_raise StandardError
        end

        it "returns origin coordinates in timezone" do
          expect(subject).to eq coordinates
        end
      end
    end

    context "when in non-silent mode" do
      before do
        TimezoneTeleporter.configure do |c|
          c.silent_mode = false
        end
      end

      context "when timezone is not found" do
        before do
          allow(TimezoneTeleporter).to receive(:timezone_at)
            .and_raise error
        end

        let(:error) { TimezoneTeleporter::TimeZoneNotFoundError }

        it "returns origin coordinates in timezone" do
          expect { subject }.to raise_error error
        end
      end
    end
  end

  context ".timezone_at" do
    subject { TimezoneTeleporter.timezone_at(*coordinates) }

    let(:test_locations) { JSON.parse(File.read(TEST_LOCATION_PATH)) }

    context "with proper test data" do
      it "locations match timezones" do
        TimezoneTeleporter::TIMEZONE_LOCATIONS.each do |timezone, coordinates|
          expect(TimezoneTeleporter.timezone_at(*coordinates)).to eq timezone
        end
      end
    end

    context "when coordinates are out of bound" do
      let(:coordinates) { [300, 300] }

      it "raises an error" do
        expect { subject }.to raise_exception
      end
    end

    context "when timezone is not found" do
      before do
        allow_any_instance_of(TimezoneFinder::TimezoneFinder).to receive(:timezone_at)
          .with(*coordinates)
          .and_return(nil)
      end

      it "raises an error" do
        expect { subject }.to raise_exception
      end
    end
  end
end
