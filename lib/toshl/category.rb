module Toshl
  class Category
    API_URL = '/categories'

    def self.list
      response = Toshl.make_api_request('get', API_URL, {})
    end

  end
end
