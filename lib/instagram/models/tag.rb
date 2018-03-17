module Instagram
  module Models
    class Tag
      attr_reader(
        :id,
        :shortcode,
        :taken_at_timestamp,
        :likes,
        :owner_id,
        :is_video,
        :video_view_count
      )

      def self.build(node:)
        p = {}
        p[:id] = node['id']
        p[:shortcode] = node['shortcode']
        p[:taken_at_timestamp] = node['taken_at_timestamp']
        p[:likes] = node['edge_liked_by']['count']
        p[:owner_id] = node['owner']['id']
        p[:is_video] = node['is_video']
        p[:video_view_count] = node['video_view_count']

        self.new(p)
      end

      def initialize(params = {})
        @id = params[:id]
        @shortcode = params[:shortcode]
        @taken_at_timestamp = params[:taken_at_timestamp]
        @likes = params[:likes]
        @owner_id = params[:owner_id]
        @is_video = params[:is_video]
        @video_view_count = params[:video_view_count]
      end
    end
  end
end
