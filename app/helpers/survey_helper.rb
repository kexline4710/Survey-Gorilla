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

  def response_count(possible_answer)
    AnswersUser.where("possible_answer_id = ?", possible_answer.id).length
  end

end
