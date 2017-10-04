module Toshl
  class Account
    API_URL = '/accounts'

    def self.list
      response = Toshl.make_api_request('get', API_URL, {})
    end

  end
end
