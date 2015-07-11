class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :forum_questions
	has_many :forum_question_comments
	has_many :forum_answers
	has_many :forum_answer_comments
	has_many :authentications
	has_one :user_detail

	# def apply_omniauth(omni)
	# 	authentications.build(:provider => omni['provider'],
	# 	:uid => omni['uid'],
	# 	:token => omni['credentials'].token,
	# 	:token_secret => omni['credentials'].secret)
	# end
end
