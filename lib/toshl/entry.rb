module Toshl
  class Entry
    API_URL = '/entries'

    def self.list(range=1.month.ago..Date.today)
      response = Toshl.make_api_request('get', API_URL, { from: range.first.strftime('%Y-%m-%d'), to: range.last.strftime('%Y-%m-%d')})
    end

  end
end
