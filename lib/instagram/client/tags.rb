module Instagram
  class Client
    module Tags
      PATH = 'explore/tags'

      def explore(tag_name)
        get("#{PATH}/#{tag_name}/?__a=1")
      end
    end
  end
end
