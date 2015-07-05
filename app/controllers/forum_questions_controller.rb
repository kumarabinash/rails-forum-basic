class ForumQuestionsController < ApplicationController
	before_action :set_forum_question, only: [:show, :edit, :update, :destroy]

	before_action :authenticate_user!, only: [:create, :update, :destroy]
	def index
		@forum_questions = ForumQuestion.all
	end

	def show
		# @forum_question = ForumQuestion.find(params[:id])
		@forum_question_comment = ForumQuestionComment.new
		@forum_question_comment.forum_question_id = @forum_question.id

		@forum_answer = ForumAnswer.new
		@forum_answer_comment = ForumAnswerComment.new
	end

	def new
		@forum_question = ForumQuestion.new
	end

	def create
		# fail
		@forum_question = ForumQuestion.new(forum_question_params)
		@forum_question.user_id = current_user.id
		@forum_question.save
		redirect_to forum_questions_path
	end

	def update

		# fail
		# @forum_question = ForumQuestion.find(params[:id])
		@forum_question.update({votes: params[:votes]})
		respond_to do |format|
			format.html {redirect_to forum_question_path(@forum_question)}
		end

	end


	


	private

	def set_forum_question
		@forum_question = ForumQuestion.find(params[:id])
	end

	def forum_question_params
		params.require(:forum_question).permit(:title, :body, :user_id, :topic_id, :votes)
	end
end
