# helpers do
#   def next_question(survey)
#     survey_questions = question.survey.questions

#     answered_cards = []
#     correct_attempts = Attempt.where(round_id: round.id, correct: true)
#     correct_attempts.each do |attempt|
#       answered_cards << Card.find_by_id(attempt.card_id)
#     end

#     unanswered_cards = deck.cards - answered_cards
#     new_card = unanswered_cards.sample
#   end
# end