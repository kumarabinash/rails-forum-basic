class Users::RegistrationsController < Devise::RegistrationsController
# before_filter :configure_sign_up_params, only: [:create]
# before_filter :configure_account_update_params, only: [:update]


# def build_resource(*args)
#   super
#   if session[:omniauth]
#     @user.apply_omniauth(session[:omniauth])
#     @user.valid?
#   end
# end
  # GET /resource/sign_up
  def new
    super

  end







  # POST /resource
  def create
    # super
    @user = User.create(sign_up_params)
    if @user.save
      @user.authentications.create!(:provider => session[:omniauth]['provider'], :uid => session[:omniauth]['uid'], :token => session[:omniauth]['credentials']['token'])

      UserDetail.create!(:user_id => @user.id, :first_name => session[:omniauth]['info']['first_name'],
        :last_name => session[:omniauth]['info']['last_name'],
        :image_url => session[:omniauth]['info']['image']
        )
    end



    sign_in_and_redirect @user
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.for(:sign_up) << :attribute
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.for(:account_update) << :attribute
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
