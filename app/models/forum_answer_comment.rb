class ForumAnswerComment < ActiveRecord::Base
	belongs_to :user
	belongs_to :forum_answer
end
