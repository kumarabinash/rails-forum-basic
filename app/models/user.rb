class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :forum_questions
	has_many :forum_question_comments
	has_many :forum_answers
	has_many :forum_answer_comments

	has_one :user_detail
end
