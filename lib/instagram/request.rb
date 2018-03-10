require 'httparty'

module Instagram
  module Request
    def get(path, options = {})
      response = HTTParty.get("#{self.endpoint}/#{path}", options)
      JSON.parse(response.body)
    end
  end
end
