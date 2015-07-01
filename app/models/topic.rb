class Topic < ActiveRecord::Base
	has_many :forum_questions
end
