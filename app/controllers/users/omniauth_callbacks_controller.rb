class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    logger.info request.env["omniauth.auth"]
    @user = User.find_for_oauth(request.env["omniauth.auth"])
    if @user.persisted?
      sign_in_and_redirect @user, event: authenticate_user!
      #set_flash_message(:notice, :success, kind: 'Facebook') if is_navigational_format?
    end

  end
end