module Instagram
  class Client
    module Users

      def user(username: nil)
        get("#{username}/?__a=1")
      end
    end
  end
end
