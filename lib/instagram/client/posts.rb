module Instagram
  class Client
    module Posts
      PATH = 'p'

      def post(shortcode: nil)
        get("#{PATH}/#{shortcode}/?__a=1")
      end
    end
  end
end
