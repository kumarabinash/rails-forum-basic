class ForumQuestionsController < ApplicationController
	def index
		@forum_questions = ForumQuestion.all
	end

	def new
		@forum_question = ForumQuestion.new
	end

	def create
		# fail
		@forum_question = ForumQuestion.new(forum_question_params)
		# @forum_question.user_id = forum_question_params(:user_id).to_i
		# @forum_question.topic_id = forum_question_params(:topic_id).to_i
		@forum_question.save
		redirect_to forum_questions_path
	end

	


	private

	def forum_question_params
		params.require(:forum_question).permit(:title, :body, :user_id, :topic_id)
	end
end
