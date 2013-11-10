post '/surveys/:survey_id/taken_surveys' do
  begin
    if session[:user_id]
      current_survey = Survey.find(params[:survey_id])
      TakenSurvey.create(survey_id: current_survey.id, user_id: session[:user_id])

      session[:error] = ""
      next_question = next_question(current_survey)
      redirect to "/surveys/#{current_survey.id}/questions/#{next_question.id}"
    else
      redirect '/login_page'
    end
    rescue ActiveRecord::RecordNotUnique
      session[:error] = "You've allready taken that survey silly Gorilla!"
      redirect '/'
  end

end

get '/surveys/:survey_id/questions/:question_id' do
  @survey = Survey.find(params[:survey_id])
  @question = Question.find(params[:question_id])
  erb :question_take
end

post '/surveys/:survey_id/questions/:question_id/answers_users' do
  survey = Survey.find(params[:survey_id])
  question  = Question.find(params[:question_id])
  new_answer = AnswersUser.create(user_id: current_user.id, possible_answer_id: params[:possible_answer_id])

  next_question = next_question(survey)
    puts "*************************************"
  puts next_question.inspect
  puts "*************************************"
  if next_question != nil
    redirect to "/surveys/#{survey.id}/questions/#{next_question.id}"
  else
    redirect to "/surveys/#{survey.id}/results"
  end
end

get '/surveys/:survey_id/results' do
  @survey = Survey.find(params[:survey_id])
  @questions = @survey.questions
  @taken_survey = TakenSurvey.find_by_user_id_and_survey_id(current_user.id,1)
  @users_responses = @survey.answers_users.where("user_id = ?", current_user.id)
  @responses = AnswersUser.all
  erb :results
end
