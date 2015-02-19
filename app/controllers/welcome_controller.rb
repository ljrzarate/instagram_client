class WelcomeController < ApplicationController

  def callback
    response = Instagram.get_access_token(params[:code], redirect_uri: Settings.instagram_callback_url)
    session[:access_token] = response.access_token
    redirect_to likes_path
  end

end
