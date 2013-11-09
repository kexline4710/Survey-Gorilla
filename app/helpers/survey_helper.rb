helpers do
  def next_question(survey)
    all_survey_questions = question.survey.questions

    survey.id ==
    AnswersUser.where("user_id = ? AND possible_answer")
    answered_questions = []

    correct_attempts = Attempt.where(round_id: round.id, correct: true)
    correct_attempts.each do |attempt|
      answered_questionss << Card.find_by_id(attempt.card_id)
    end

    unanswered_cards = deck.cards - answered_cards
    new_card = unanswered_cards.sample
  end
end

# Want a collection of questions
# AnswersUser = user_id
#&&
# AnswersUser.possible_answer.question.survey = survey