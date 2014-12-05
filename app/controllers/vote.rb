post '/vote' do
  if params[:value] == "+"
    value = 1
  elsif params[:value] == "-"
    value = -1
  end

  Postvote.create(post_id: params[:post_id], user_id: session[:user].id, value: value)

  @user = session[:user]

  return Postvote.where(post_id: params[:post_id], value: value).count.to_s
end


post '/commentvote' do
  if params[:value] == "+"
    value = 1
  elsif params[:value] == "-"
    value = -1
  end

  Commentvote.create(comment_id: params[:comment_id], user_id: session[:user].id, value: value)

  @user = session[:user]

  return Commentvote.where(comment_id: params[:comment_id], value: value).count.to_s
end