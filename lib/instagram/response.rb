module Instagram
  module Response
    class TagsResponse
      attr_reader :status, :top_posts

      def initialize(status: true, top_posts:)
        @status = status
        @top_posts = top_posts
      end
    end
  end
end
