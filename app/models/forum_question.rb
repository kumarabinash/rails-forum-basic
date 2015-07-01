class ForumQuestion < ActiveRecord::Base
	belongs_to :topic
	has_many :forum_answers
	belongs_to :user
	has_many :forum_question_comments
end
