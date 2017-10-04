require 'rest-client'
require 'active_support'
require 'active_support/core_ext'
require 'toshl/version'

# Configuration
require 'toshl/configuration'

# Resources
require 'toshl/entry'
require 'toshl/account'
require 'toshl/category'

# Error
require 'toshl/errors/configuration_error'

module Toshl
  def self.configure
    yield(configuration)
  end

  def self.make_api_request(verb, url, params = {})
    configuration.validate!
    api_url = [configuration.api_url, url].join('')

    response = RestClient::Request.execute(method: verb, url: api_url,
      user: configuration.token, password: '',
      headers: { params: params }
    )
    JSON.parse(response.body)
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

end
