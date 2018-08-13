# frozen_string_literal: true

require "spec_helper"

TEST_LOCATION_PATH = "./spec/fixtures/test_locations.json"

RSpec.describe TimezoneTeleporter do
  it 'has a version number' do
    expect(TimezoneTeleporter::VERSION).not_to be nil
  end

  let(:coordinates) { [52.5200, 13.4050] }
  let(:zone) { 'Europe/Kiev' }

  context ".teleport" do
    context "with coordinates as parameter" do
      it "calls teleport_location" do
        expect(subject).to receive(:teleport_location).with(*coordinates)
        subject.teleport_location(*coordinates)
      end
    end

    context "with timezone as parameter" do
      it "calls teleport_timezone" do
        expect(subject).to receive(:teleport_timezone).with(zone)
        subject.teleport_timezone(zone)
      end
    end
  end

  context ".teleport_location" do
    subject { TimezoneTeleporter.teleport_location(coordinates) }

    context "called with proper coordinates" do
      it "returns correct coordinates in timezone" do
        expect(subject).to eq TimezoneTeleporter::TIMEZONE_LOCATIONS[TimezoneTeleporter.timezone_at(*coordinates)]
      end
    end

    context "with test data" do
      let(:test_locations) { JSON.parse(File.read(TEST_LOCATION_PATH)) }

      it "generated locations match timezone of locations" do
        test_locations.each do |timezone, coordinates|
          expect(TimezoneTeleporter.teleport_location(coordinates)).to eq TimezoneTeleporter::TIMEZONE_LOCATIONS[timezone]
        end
      end

      it "new locations are different from input locations" do
        test_locations.each do |_timezone, coordinates|
          expect(TimezoneTeleporter.teleport_location(coordinates)).not_to eq coordinates
        end
      end
    end

    context "when in silent mode" do
      before do
        TimezoneTeleporter.configure do |c|
          c.silent_exceptions = true
        end
      end

      context "when timezone is not found" do
        let(:out_of_bound_coordinates) { [300, 300] }

        it "returns origin coordinates in timezone" do
          expect(TimezoneTeleporter.teleport_location(out_of_bound_coordinates)).to eq out_of_bound_coordinates
        end
      end
    end

    context "when in non-silent mode" do
      before do
        TimezoneTeleporter.configure do |c|
          c.silent_exceptions = false
        end
      end

      context "when timezone is not found" do
        before do
          allow(TimezoneTeleporter).to receive(:teleport_location)
            .and_raise error
        end

        let(:error) { TimezoneTeleporter::TimeZoneNotFoundError }

        it "raises TimeZoneNotFoundError" do
          expect { subject }.to raise_error error
        end
      end
    end
  end

  context ".teleport_timezone" do
    subject { TimezoneTeleporter.teleport_timezone(zone) }

    context "called with proper coordinates" do
      it "returns correct coordinates in timezone" do
        expect(subject).to eq TimezoneTeleporter::TIMEZONE_LOCATIONS[TimezoneTeleporter.timezone_at(*subject)]
      end
    end

    context "with test data" do
      let(:test_locations) { JSON.parse(File.read(TEST_LOCATION_PATH)) }

      it "generated locations match timezone of locations" do
        test_locations.each do |timezone, _coordinates|
          expect(TimezoneTeleporter.teleport_timezone(timezone)).to eq TimezoneTeleporter::TIMEZONE_LOCATIONS[timezone]
        end
      end

      it "new locations are different from input locations" do
        test_locations.each do |timezone, coordinates|
          expect(TimezoneTeleporter.teleport_timezone(timezone)).not_to eq coordinates
        end
      end
    end

    context "when in silent mode" do
      before do
        TimezoneTeleporter.configure do |c|
          c.silent_exceptions = true
        end
      end

      context "when timezone is not found" do
        let(:unknown_timezone) { 'Berlin' }

        it "returns nil" do
          expect(TimezoneTeleporter.teleport_timezone(unknown_timezone)).to eq nil
        end
      end
    end

    context "when in non-silent mode" do
      before do
        TimezoneTeleporter.configure do |c|
          c.silent_exceptions = false
        end
      end

      context "when timezone is not found" do
        before do
          allow(TimezoneTeleporter).to receive(:teleport_timezone)
            .and_raise error
        end

        let(:error) { TimezoneTeleporter::TimeZoneNotFoundError }

        it "raises TimeZoneNotFoundError" do
          expect { subject }.to raise_error error
        end
      end
    end
  end
end
