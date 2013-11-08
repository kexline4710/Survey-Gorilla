class PossibleAnswer < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :question
  has_many :answers_users
end
