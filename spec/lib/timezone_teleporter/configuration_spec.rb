# frozen_string_literal: true

require "spec_helper"

RSpec.describe TimezoneTeleporter do
  context ".configure" do
    let(:logger) { ::Logger.new(STDOUT) }
    let(:use_proximity_algorithm) { true }
    let(:delta_degree) { 3 }

    before do
      TimezoneTeleporter.configure do |c|
        c.logger = logger
        c.use_proximity_algorithm = use_proximity_algorithm
        c.delta_degree = delta_degree
      end
    end

    context "logger" do
      subject { TimezoneTeleporter.configuration.logger }

      it { is_expected.to eq logger }
    end

    context "use_proximity_algorithm" do
      subject { TimezoneTeleporter.configuration.use_proximity_algorithm }

      it { is_expected.to eq use_proximity_algorithm }
    end

    context "delta_degree" do
      subject { TimezoneTeleporter.configuration.delta_degree }

      it { is_expected.to eq delta_degree }
    end
  end
end
