class ForumQuestion < ActiveRecord::Base
	has_and_belongs_to_many :topics
	has_many :forum_answers
	belongs_to :user
	has_many :forum_question_comments

	def slug
    title.downcase.gsub(/[^0-9A-Za-z]_/, '').gsub(" ", "-").gsub(".", "")
  end

	def to_param
    "#{id}-#{slug}"
  end


  # def topic_list
  # 	self.topics.collect do |topic|
  # 		topic.name
  # 	end.join(", ")
  # end

  # def topic_list=(topic_string)
  # 	topic_name = topic_string.split(",").collect{ |topic| topic.strip.downcase}.uniq
  	
  # end
end
