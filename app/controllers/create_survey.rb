get '/surveys/new' do

  # form to create the title, image
  #button to post and go to first question

end


post '/surveys' do

#create the survey with id 1
#later session id
# redirect to question page
end

get '/surveys/:survey_id/questions/new' do

#create questions with possible answers
# button to add more answers (later, AJAX ME UP)
# button to create another question, send to post, and redirect back
#finish goes to the review page
end

post '/surveys/:survey_id/questions' do
#write question/answer with the survey_id to database
# if statement here
#redirect to "get" page
#else send to review page
end

get '/surveys/:survey_id/review' do
#show all survey info.
#submit button-returns to '/'
#edit button(ajax,)
end
