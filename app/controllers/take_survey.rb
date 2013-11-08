post '/surveys/:survey_id' do
# initializing new survey session
# using id 2
# bail button saves data redirects to home
# redirect get first question
end

get '/surveys/:survey_id/question/:question_id' do
# diplaying question and all answers
# display remaining questions
# submit button route to post upon answer
# bail button
end

post '/surveys/:survey_id/question/:question_id/answers_users/new' do
# creates answer_user with id 2
# if last question
# get "results"
# else
# redirect get next question
end

get '/surveys/:survey_id/results' do
# individual's results and aggregate
# go home button
end
