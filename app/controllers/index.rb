get '/' do
  @user = session[:user]
  erb :index
end
