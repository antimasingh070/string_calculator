# frozen_string_literal: true

# Module for string calculation functionality
class StringCalculator
  # Error raised when negative numbers are present in input.
  class NegativeError < StandardError; end

  # Validates numbers for negative values and raises errors if needed.
  class Validator
    def self.validate!(numbers)
      negatives = numbers.select(&:negative?)
      return if negatives.empty?

      raise NegativeError, "Negatives not allowed: #{negatives.join(', ')}"
    end
  end
end
