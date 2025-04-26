# frozen_string_literal: true

# StringCalculator is a utility to sum numbers from a string input.
class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = detect_delimiter(numbers)
    extract_numbers(numbers, delimiter).sum
  end

  def self.detect_delimiter(input)
    input.start_with?('//') ? input[2] : ','
  end

  def self.extract_numbers(input, delimiter)
    input.gsub("\n", delimiter).split(delimiter).map(&:to_i)
  end
end
