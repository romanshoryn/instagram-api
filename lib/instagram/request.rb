require 'httparty'

module Instagram
  module Request
    def get(*args)
      HTTParty.get(*args)
    end
  end
end
