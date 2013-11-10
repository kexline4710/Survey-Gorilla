class Survey < ActiveRecord::Base
  belongs_to :author, class_name: "User", foreign_key: :user_id
  has_many :taken_surveys
  has_many :questions
  has_many :completers, class_name: "User", foreign_key: :user_id, through: :taken_surveys
  has_many :answers_users, through: :questions
end
