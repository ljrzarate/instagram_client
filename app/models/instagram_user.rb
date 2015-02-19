class InstagramUser
  def initializer(client)
    @client = client
    @user = @client.user
  end
end
