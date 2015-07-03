class ForumAnswersController < ApplicationController
	def create
		@forum_answer = ForumAnswer.new(forum_answer_params)
		@forum_answer.save

		redirect_to forum_question_path(@forum_answer.forum_question)
	end


	private

	def forum_answer_params
		params.require(:forum_answer).permit(:body, :user_id, :forum_question_id)
	end
end
