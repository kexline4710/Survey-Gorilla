get '/logout' do
  session.clear
  redirect '/'
end

get '/login_page' do
  erb :login
end

post '/login' do
  if User.where(username: params[:username]) 
    user = User.where(username: params[:username])
  end
  if user.password == params[:password]
    session[:user_id] = User.where(username: params[:username]).id
    redirect '/profile'
    @user = user
  else
    @errors_message = true
    redirect '/'
  end
end
