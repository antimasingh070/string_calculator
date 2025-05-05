# frozen_string_literal: true

# Module for string calculation functionality
class StringCalculator
  # Error raised when negative numbers are present in input.
  class NegativeError < StandardError; end

  # Validates numbers for negative values and raises errors if needed.
  class Validator
    def self.validate!(numbers)
      negatives = numbers.select { |n| n < 0 }
      return if negatives.empty?


      
      raise NegativeError, "negative numbers not allowed: #{negatives.join(',')}"
    end
  end
end
