class User < ActiveRecord::Base
	has_many :forum_questions
	has_many :forum_question_comments
	has_many :forum_answers
	has_many :forum_answer_comments
end
