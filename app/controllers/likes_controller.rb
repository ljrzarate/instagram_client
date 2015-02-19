class LikesController < ApplicationController
  def index
    client = Instagram.client(:access_token => session[:access_token])
    @media = client.user_liked_media
  end
end
