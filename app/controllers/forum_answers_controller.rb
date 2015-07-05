class ForumAnswersController < ApplicationController
	before_action :authenticate_user!, only: [:create]

	def create
		@forum_answer = ForumAnswer.new(forum_answer_params)
		@forum_answer.user_id = current_user.id
		@forum_answer.save

		redirect_to forum_question_path(@forum_answer.forum_question)
	end


	private

	def forum_answer_params
		params.require(:forum_answer).permit(:body, :user_id, :forum_question_id)
	end
end
