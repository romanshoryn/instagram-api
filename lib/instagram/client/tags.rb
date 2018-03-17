module Instagram
  class Client
    module Tags
      def explore(tag_name:, end_cursor: nil)
        response = get("explore/tags/#{tag_name}/?__a=1")
        
        hashtag = response['graphql']['hashtag']
        top_posts_hashtag = hashtag['edge_hashtag_to_top_posts']['edges']
        
        top_posts = top_posts_hashtag.map do |tag|
          Instagram::Models::Tag.build(node: tag['node'])
        end

        Response::TagsResponse.new(status: true, top_posts: top_posts)
      end
    end
  end
end
