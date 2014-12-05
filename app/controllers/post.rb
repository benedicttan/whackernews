set :protection, except: :session_hijacking

get '/post/:id' do
  @user = session[:user]
  @particular_post = Post.find(params[:id])
  @message = params[:message]
  erb :post
end

get '/profile' do
  @user = session[:user]
  erb :profile
end

get '/newpost' do
  @user = session[:user]
  erb :newpost
end

post '/newpost' do
  @particular_post = Post.create(params[:post])
  redirect to ('/profile')
end