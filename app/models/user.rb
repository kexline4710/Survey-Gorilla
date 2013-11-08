class User < ActiveRecord::Base
  validates :email,:username,:password, presence: true
  validates :username, uniqueness: true
  has_many :surveys
  has_many :answers_users
  has_many :taken_surveys
end
