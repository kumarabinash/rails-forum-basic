class ForumAnswerCommentsController < ApplicationController
	before_action :authenticate_user!, only: [:create]

	def create
		@forum_answer_comment = ForumAnswerComment.new(forum_answer_comment_params)
		@forum_answer_comment.user_id = current_user.id
		@forum_answer_comment.save

		redirect_to forum_question_path(@forum_answer_comment.forum_answer.forum_question)
	end


	def forum_answer_comment_params
		params.require(:forum_answer_comment).permit(:user_id, :forum_answer_id, :body)
	end
end
