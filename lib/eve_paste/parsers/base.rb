# frozen_string_literal: true

module EVEPaste
  module Parsers
    # Base class for parsers.
    class Base
      def initialize(input, **options)
        @input = input
        @options = options
      end

      def self.parse(input, **options)
        new(input, **options).parse
      end
    end
  end
end
