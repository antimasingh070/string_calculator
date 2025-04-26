# frozen_string_literal: true

require 'string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    context 'when input is an empty string' do
      subject { described_class.add('') }

      it { is_expected.to eq(0) }
    end

    context 'with single number', :single_number do
      it 'returns the number itself' do
        aggregate_failures do
          expect(described_class.add('5')).to eq(5)
          expect(described_class.add('10')).to eq(10)
        end
      end
    end
  end
end
