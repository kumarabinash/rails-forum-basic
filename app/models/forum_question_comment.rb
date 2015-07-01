class ForumQuestionComment < ActiveRecord::Base
	belongs_to :forum_question
	belongs_to :user
end
