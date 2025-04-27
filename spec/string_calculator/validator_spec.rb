# frozen_string_literal: true

require 'string_calculator/validator'

RSpec.describe StringCalculator::Validator do
  describe '.validate!' do
    context 'with negative numbers' do
      it 'raises error for single negative' do
        expect { described_class.validate!([1, -2]) }.to raise_error(
          StringCalculator::NegativeError,
          'negative numbers not allowed: -2' # Exact match
        )
      end

      it 'lists multiple negatives in error message' do
        expect { described_class.validate!([-1, -5, 3]) }.to raise_error(
          StringCalculator::NegativeError,
          'negative numbers not allowed: -1,-5'
        )
      end
    end

    context 'with valid numbers' do
      it 'does not raise error' do
        expect { described_class.validate!([1, 5]) }.not_to raise_error
      end
    end
  end
end
