    helpers do
  def next_question(survey)
    users_answers_all = AnswersUser.where("user_id = ?", 2)
    answered_questions= []

    users_answers_all.each do |answer|
      if answer.possible_answer.question.survey.id.to_s == survey.id.to_s
        answered_questions << answer.possible_answer.question
      end
    end

    all_survey_questions = survey.questions
    unanswered_questions = all_survey_questions - answered_questions
    new_question = unanswered_questions.shift
  end

end

# All survey questions: [#<Question id: 1, survey_id: 1, q_content: "Why are we here?", file: nil, created_at: "2013-11-09 13:34:32", updated_at: "2013-11-09 13:34:32">, #<Question id: 2, survey_id: 1, q_content: "What will Alex draw next?", file: nil, created_at: "2013-11-09 13:34:32", updated_at: "2013-11-09 13:34:32">]
# All answered questions: [#<Question id: 1, survey_id: 1, q_content: "Why are we here?", file: nil, created_at: "2013-11-09 13:34:32", updated_at: "2013-11-09 13:34:32">, #<Question id: 2, survey_id: 1, q_content: "What will Alex draw next?", file: nil, created_at: "2013-11-09 13:34:32", updated_at: "2013-11-09 13:34:32">]
# All unanswered_questions[]