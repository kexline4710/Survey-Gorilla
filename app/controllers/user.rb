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
  
if session[:avatar]
  @avatar = @user.uploads.first
end
  erb :profile
end

post '/profile' do
@user = User.find(session[:user_id])
@user.uploads << Upload.create(file: params[:image])
session[:avatar]=true
redirect to ('/profile')
end


post '/login' do
  @username = params[:username]
  user = User.authenticate(@username, params[:password])
  if user 
      session[:user_id] = user.id
      redirect '/profile'
    
  else
    session[:error] = "Sorry that username or password doesn't exits"
    redirect '/login_page'
  end
end

post '/users/new' do
  # sign-up
  user = User.create params[:new]
  if user.save
    # successfully created new account; set up the session and redirect
    session[:user_id] = user.id
    redirect '/profile'
  else
    # an error occurred, re-render the sign-up form, displaying errors
    session[:error] = user.errors.full_messages
    redirect '/login_page'
  end
end
