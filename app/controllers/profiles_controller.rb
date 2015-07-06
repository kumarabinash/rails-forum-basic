class ProfilesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :update, :destroy]

	def new
		@profile = UserDetail.find_or_initialize_by(user_id: current_user.id)
	end


	def create
		@profile = UserDetail.new(profile_params)
		@profile.user_id = current_user.id

		if @profile.save
			redirect_to profile_path(current_user)
		else
			redirect_to new_profile_path(profile_params)
		end

	end

	def show
		@profile = User.find(current_user.id)
	end


	private

	def profile_params
		params.require(:user_detail).permit(:first_name, :last_name, :username, :gender, :image_url, :phone_number, :address)
	end
end
