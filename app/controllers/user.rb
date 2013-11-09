get '/logout' do
  session.clear
  redirect '/'
end

get '/login_page' do
  erb :login
end

post '/login' do
  if User.find_by_username(params[:username]) 
    user = User.find_by_username(params[:username])
  end
  if user.password == params[:password]
    session[:user_id] = User.find_by_username(params[:username]).id
    redirect '/profile'
    @user = user
  else
    @errors_message = true
    redirect '/'
  end
end
