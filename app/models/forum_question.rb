class ForumQuestion < ActiveRecord::Base
	has_and_belongs_to_many :topics
	has_many :forum_answers
	belongs_to :user
	has_many :forum_question_comments

	def slug
    title.downcase.gsub(" ", "-").gsub(".", "")
  end

	def to_param
    "#{id}-#{slug}"
  end
end
