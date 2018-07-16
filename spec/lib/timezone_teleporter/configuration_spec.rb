# frozen_string_literal: true

require "spec_helper"

RSpec.describe TimezoneTeleporter do
  context ".configure" do
    let(:silent_mode) { true }
    let(:use_proximity_algorithm) { true }
    let(:delta_degree) { 3 }

    before do
      TimezoneTeleporter.configure do |c|
        c.silent_mode = silent_mode
        c.use_proximity_algorithm = use_proximity_algorithm
        c.delta_degree = delta_degree
      end
    end

    context "silent_mode" do
      subject { TimezoneTeleporter.configuration.silent_mode }

      it { is_expected.to eq silent_mode }
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
