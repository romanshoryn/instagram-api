module Instagram
  class Client
    module Posts
      def post(shortcode: nil)
        get("p/#{shortcode}/?__a=1")
      end
    end
  end
end
