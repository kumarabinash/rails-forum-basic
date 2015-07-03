class TopicsController < ApplicationController
	def new
		@topic = Topic.new
	end

	def create
		@topic = Topic.new(topic_params)
		@topic.save

		redirect_to topics_path

	end
end
