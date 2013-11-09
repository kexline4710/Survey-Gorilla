clay = User.create(username:"Clay", email: "clay@dbc.com", password: "password")
jane = User.create(username:"Jane", email: "jane@dbc.com", password: "password")
mickey = User.create(username:"Mickey", email: "mickey@dbc.com", password: "password")
User.create(username:"Daffy", email: "daffy@dbc.com", password: "password")
User.create(username:"Bugs", email: "bugs@dbc.com", password: "password")
elmer = User.create(username:"Elmer", email: "elmer@dbc.com", password: "password")

##########################################

mickey.surveys.create(title: "Your Favorite Things")

Question.create(survey_id: 1, q_content: "What's your favorite color?")
PossibleAnswer.create(question_id: 1, a_content: "Red")
PossibleAnswer.create(question_id: 1, a_content: "Blue")
PossibleAnswer.create(question_id: 1, a_content: "Yellow")
PossibleAnswer.create(question_id: 1, a_content: "Green")
PossibleAnswer.create(question_id: 1, a_content: "Pink")
PossibleAnswer.create(question_id: 1, a_content: "Purple")
PossibleAnswer.create(question_id: 1, a_content: "Orange")

Question.create(survey_id: 1, q_content: "Which is your favorite thing?")
PossibleAnswer.create(question_id: 2, a_content: "Raindrops on roses")
PossibleAnswer.create(question_id: 2, a_content: "Whiskers on kittens")
PossibleAnswer.create(question_id: 2, a_content: "Bright copper kettles")
PossibleAnswer.create(question_id: 2, a_content: "Warm woolen mittens")
PossibleAnswer.create(question_id: 2, a_content: "Brown paper packages tied up with strings")

Question.create(survey_id: 1, q_content: "What's your favorite pie")
PossibleAnswer.create(question_id: 3, a_content: "Apple")
PossibleAnswer.create(question_id: 3, a_content: "Pecan")
PossibleAnswer.create(question_id: 3, a_content: "Boston Cream")
PossibleAnswer.create(question_id: 3, a_content: "Cherry")
PossibleAnswer.create(question_id: 3, a_content: "Coconut Custard")

Question.create(survey_id: 1, q_content: "Best season")
PossibleAnswer.create(question_id: 4, a_content: "Spring")
PossibleAnswer.create(question_id: 4, a_content: "Summer")
PossibleAnswer.create(question_id: 4, a_content: "Winter")
PossibleAnswer.create(question_id: 4, a_content: "Fall")

######################################

elmer.surveys.create(title: "Sanity Check")

Question.create(survey_id: 2, q_content: "What year is it?")
PossibleAnswer.create(question_id: 5, a_content: "1842")
PossibleAnswer.create(question_id: 5, a_content: "1992")
PossibleAnswer.create(question_id: 5, a_content: "1920")
PossibleAnswer.create(question_id: 5, a_content: "2003")
PossibleAnswer.create(question_id: 5, a_content: "2015")
PossibleAnswer.create(question_id: 5, a_content: "2013")

Question.create(survey_id: 2, q_content: "Best time for a nap")
PossibleAnswer.create(question_id: 6, a_content: "afternoon")
PossibleAnswer.create(question_id: 6, a_content: "early morning")
PossibleAnswer.create(question_id: 6, a_content: "when the going gets tough")
PossibleAnswer.create(question_id: 6, a_content: "when it's time")

Question.create(survey_id: 2, q_content: "Your home planet")
PossibleAnswer.create(question_id: 7, a_content: "Mars")
PossibleAnswer.create(question_id: 7, a_content: "Distance blue dot in the Virgo cluster")
PossibleAnswer.create(question_id: 7, a_content: "Earth")
PossibleAnswer.create(question_id: 7, a_content: "Moon")
PossibleAnswer.create(question_id: 7, a_content: "Pluto")

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




