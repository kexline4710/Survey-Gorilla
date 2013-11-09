post '/surveys/:survey_id/taken_surveys' do
# bail button saves data redirects to home (later)

# initializing new taken survey session
  current_survey = Survey.find(params[:survey_id])
  TakenSurvey.create(survey_id: current_survey.id, user_id: 3)
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
# creates answer_user with id 2
# if last question
# get "results"
# else
# redirect get next question
  question  = Question.find(params[:question_id])
  # next_question(survey)

  # survey_questions.find_by_qcontent(question.q_content)
  AnswersUser.create(user_id: 3, possible_answer_id: params[:possible_answer_id])
  # if
  # else
  #   #got to the next question
  # end
  erb :answer_user
end

get '/surveys/:survey_id/results' do
# individual's results and aggregate
# go home button
end
