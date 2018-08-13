# frozen_string_literal: true

require "spec_helper"

RSpec.describe TimezoneTeleporter do
  context ".configure" do
    let(:silent_exceptions) { true }
    let(:use_proximity_algorithm) { true }
    let(:delta_degree) { 3 }

    before do
      TimezoneTeleporter.configure do |c|
        c.silent_exceptions = silent_exceptions
        c.use_proximity_algorithm = use_proximity_algorithm
        c.delta_degree = delta_degree
      end
    end

    context "silent_exceptions" do
      subject { TimezoneTeleporter.configuration.silent_exceptions }

      it { is_expected.to eq silent_exceptions }
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
