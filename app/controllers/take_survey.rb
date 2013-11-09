post '/surveys/:survey_id/taken_surveys' do
# bail button saves data redirects to home (later)

# initializing new taken survey session
  current_survey = Survey.find(params[:survey_id])
  TakenSurvey.create(survey_id: current_survey.id, user_id: 2)
# redirect get first question
  redirect to "/surveys/#{current_survey.id}/questions/1"
end

get '/surveys/:survey_id/questions/:question_id' do
  @survey = Survey.find(params[:survey_id])
  @question = Question.find(params[:question_id])
# diplaying question and all answers
# display remaining questions
# submit button route to post upon answer
# bail button
  erb :question_take
end

post '/surveys/:survey_id/questions/:question_id/answers_users' do
  survey = Survey.find(params[:survey_id])
  question  = Question.find(params[:question_id])
  AnswersUser.create(user_id: 2, possible_answer_id: params[:possible_answer_id])
  next_question = next_question(survey)
  if next_question != nil
    redirect to "/surveys/#{survey.id}/questions/#{next_question.id}"
  else
    redirect to "/surveys/#{survey.id}/results"
  end
end

get '/surveys/:survey_id/results' do
# individual's results and aggregate
# go home button
  @survey = Survey.find(params[:survey_id])
  @questions = @survey.questions
  @taken_survey = TakenSurvey.find_by_user_id_and_survey_id(2,1)
  @users_responses = @survey.answers_users.where("user_id = ?", 2)
  erb :results
end
