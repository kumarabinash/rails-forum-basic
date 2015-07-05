class ForumQuestionCommentsController < ApplicationController
	before_action :authenticate_user!, only: [:create]
	def create
		# fail
		@forum_question_comment = ForumQuestionComment.new(forum_question_comment_params)
		@forum_question_comment.user_id = current_user.id
		@forum_question_comment.save
		redirect_to forum_question_path(@forum_question_comment.forum_question)
	end



	private

	def forum_question_comment_params
		params.require(:forum_question_comment).permit(:user_id, :forum_question_id, :body)
	end


end