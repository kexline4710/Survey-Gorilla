class Question < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :survey
  has_many :possible_answers
  has_many :answers_users, through: :possible_answers
end
