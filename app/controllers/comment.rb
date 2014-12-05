post '/comment' do
  # session[:error] = nil
  if session[:user]
    Comment.create(content: params[:comment], user: session[:user], post_id: params[:post_id])
    redirect to ("post/" << params[:post_id].to_s)
  else
    redirect to ("post/" << params[:post_id].to_s << "?message=You're not logged in to comment")
  end
end