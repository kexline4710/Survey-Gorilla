get '/' do
 # home page all surveys listed
 # Look in app/views/index.erb
 @surveys = Survey.all
  erb :index
end
