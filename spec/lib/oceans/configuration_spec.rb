# frozen_string_literal: true

require "spec_helper"

RSpec.describe Oceans do
  context ".configure" do
    let(:silent_mode) { true }
    let(:use_proximity_algorithm) { true }
    let(:delta_degree) { 3 }

    before do
      Oceans.configure do |c|
        c.silent_mode = silent_mode
        c.use_proximity_algorithm = use_proximity_algorithm
        c.delta_degree = delta_degree
      end
    end

    context "silent_mode" do
      subject { Oceans.configuration.silent_mode }

      it { is_expected.to eq silent_mode }
    end

    context "use_proximity_algorithm" do
      subject { Oceans.configuration.use_proximity_algorithm }

      it { is_expected.to eq use_proximity_algorithm }
    end

    context "delta_degree" do
      subject { Oceans.configuration.delta_degree }

      it { is_expected.to eq delta_degree }
    end
  end
end
