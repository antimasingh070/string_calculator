# frozen_string_literal: true

require_relative 'string_calculator/delimiter_parser'
# StringCalculator is a utility to sum numbers from a string input.
class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter, processed_input = DelimiterParser.parse(numbers)
    delimiters = [delimiter, "\n"]
    nums = processed_input.split(Regexp.union(delimiters)).map(&:to_i)
    nums.sum
  end
end
