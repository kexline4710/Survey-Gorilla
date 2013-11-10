enable :sessions

get '/surveys/new' do

  # form to create the title, image
  #button to post and go to first question
  erb :survey_new
end

post '/surveys' do

  session[:user_id] = User.first.id
  survey_title = params[:survey_title]
  survey = Survey.create(title: survey_title, user_id: session[:user_id])
  redirect("/surveys/#{survey.id}/questions/new")
end

get '/surveys/:survey_id/questions/new' do
  @survey_id = params[:survey_id]

  erb :surveys_questions_new
end

post '/surveys/:survey_id/questions' do
  survey = Survey.find(params[:survey_id])
  survey.questions.create(:q_content => params[:survey_question])
  question = survey.questions.last
  
  params[:answer].length.times do |i|
    puts params[:answer][i.to_s]
    question.possible_answers.create(a_content: params[:answer][i.to_s])
  end

  if params[:add]
    redirect to "/surveys/#{survey.id}/questions/new" 
  end
end  

get '/surveys/:survey_id/changes' do

@survey = Survey.find(params[:survey_id])
erb :surveys_change

end

get '/surveys/:survey_id/review' do
  @survey = Survey.find(params[:survey_id])

  erb :surveys_review
end





post '/surveys/:survey_id/changes' do
  survey = Survey.find(params[:survey_id])
  survey.questions.each do |question| 
   question.update_attributes(q_content: params[:question][question.id.to_s])
    question.possible_answers.each do |answer|
      answer.update_attributes(a_content: params[:answer][answer.id.to_s])
    end
  end
  redirect to "/surveys/#{params[:survey_id]}/review"
end







