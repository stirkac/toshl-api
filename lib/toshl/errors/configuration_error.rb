module Toshl
  module Errors
    class ConfigurationError < StandardError
      def initialize
        super 'Authorization token is missing.'
      end
    end
  end
end
