# frozen_string_literal: true

# Module for string calculation functionality
class StringCalculator
  # Parses custom delimiters from the input string.
  class DelimiterParser
    DELIMITER_REGEX = %r{^//(?:\[([^\]]+)\]|(.))?\n}.freeze

    def self.parse(input)
      return [',', input] unless input.start_with?('//')

      match = input.match(DELIMITER_REGEX)
      raise 'Invalid custom delimiter format' unless match

      # Check for multi-char (e.g., [***]) or single-char (e.g., ;)
      delimiter = match[1] || match[2]
      numbers = input.split("\n", 2)[1] || ''
      [delimiter, numbers]
    end
  end
end
