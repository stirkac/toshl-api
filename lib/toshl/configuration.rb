module Toshl
  class Configuration
    PRODUCTION_API_URL = 'https://api.toshl.com'

    attr_accessor :token

    def api_url
      PRODUCTION_API_URL
    end

    def validate!
      fail Errors::ConfigurationError unless token
    end
  end
end
