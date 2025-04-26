require 'string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    context "when input is an empty string" do
      subject { described_class.add("") }

      it { is_expected.to eq(0) }
    end
  end
end