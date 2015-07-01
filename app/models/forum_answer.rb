class ForumAnswer < ActiveRecord::Base
	belongs_to :forum_question
	belongs_to :user
	has_many :forum_answer_comments
end
