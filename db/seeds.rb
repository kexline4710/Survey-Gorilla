clay = User.create(username:"Clay", email: "clay@dbc.com", password: "password")
jane = User.create(username:"Jane", email: "jane@dbc.com", password: "password")

clay_survey = Survey.create(title: "Clay's First Survey")
clay.surveys << clay_survey
clay_survey_q1 = Question.create(q_content: "Why are we here?")
clay_survey.questions << clay_survey_q1
clay_survey_q1_a1 = PossibleAnswer.create(a_content: "For pleasure.")
clay_survey_q1_a2 = PossibleAnswer.create(a_content: "For pain.")
clay_survey_q1.possible_answers << clay_survey_q1_a1
clay_survey_q1.possible_answers << clay_survey_q1_a2
clay_survey_q2 = Question.create(q_content: "What will Alex draw next?")
clay_survey.questions << clay_survey_q2
clay_survey_q2_a1 = PossibleAnswer.create(a_content: "An olitaur.")
clay_survey_q2_a2 = PossibleAnswer.create(a_content: "Himself riding an olitaur.")
clay_survey_q2.possible_answers << clay_survey_q2_a1
clay_survey_q2.possible_answers << clay_survey_q2_a2
# jane.taken_surveys << TakenSurvey.create(survey_id: clay_survey.id)
# jane.answers_users << AnswersUser.create(possible_answer_id: clay_survey_q1_a1.id)
# jane.answers_users << AnswersUser.create(possible_answer_id: clay_survey_q2_a2.id)



