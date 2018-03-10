module Instagram
  module Configuration
    VALID_OPTIONS_KEYS = [:endpoint].freeze

    DEFAULT_ENDPOINT = 'https://www.instagram.com/'.freeze

    attr_accessor *VALID_OPTIONS_KEYS

    def self.extended(base)
      base.reset
    end

    def configure
      yield self
    end

    def options
      VALID_OPTIONS_KEYS.inject({}) do |option, key|
        option.merge!(key => send(key))
      end
    end

    def reset
      self.endpoint = DEFAULT_ENDPOINT
    end
  end
end
