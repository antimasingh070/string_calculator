# frozen_string_literal: true

require 'string_calculator/validator'

RSpec.describe StringCalculator::Validator do
  describe '.validate!' do
    it 'raises error for negatives' do
      expect { described_class.validate!([1, -2]) }.to raise_error(
        StringCalculator::NegativeError, /-2/
      )
    end
  end
end
