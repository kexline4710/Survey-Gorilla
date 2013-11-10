get '/logout' do
  session.clear
  redirect '/'
end

get '/login_page' do
  @login_page = true
  erb :login
end

get '/profile' do
  @user = User.find(session[:user_id])

  erb :profile
end

post '/login' do
  
  if User.find_by_username(params[:username]) 
    user = User.find_by_username(params[:username])
    if user.password == params[:password]
      session[:user_id] = User.find_by_username(params[:username]).id
      redirect '/profile'
    end
  end
    session[:error] = "Sorry that username or password doesn't exits"
    redirect '/login_page'
end

post '/users/new' do
  user = User.create(params[:new])
  if user.id
    session[:user_id] = user.id
    redirect '/profile'
  else
    session[:error] = user.errors.full_messages
    redirect '/login_page'
  end
end
