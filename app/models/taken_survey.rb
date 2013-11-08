class TakenSurvey < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :completer, class_name: "User", foreign_key: :user_id
  belongs_to :survey
end
