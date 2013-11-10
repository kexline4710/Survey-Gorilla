class User < ActiveRecord::Base
  include BCrypt
  attr_reader :entered_password

  
  validates :username, uniqueness: true
  validates :email, :uniqueness => true, :format => /.+@.+\..+/

  has_many :surveys
  has_many :answers_users
  has_many :taken_surveys

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(pass)
    @entered_password = pass
    @password = Password.create(pass)
    self.password_hash = @password 
  end

  def self.authenticate(username, password)
    user = User.find_by_username(username)
    return user if user && (user.password == password)
    nil #either invalid username or wrong password
  end
end
