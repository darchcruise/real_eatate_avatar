class User < ActiveRecord::Base
  require 'digest/sha1'

  attr_accessible :email, :password
  before_save :encrypt_password

  validates :email,
            :presence => true,
            uniqueness: true


  validates :password,
            :presence => true,
            :length => { :minimum => 6, :maximum => 15 }

# method to register
  def encrypt_password
    self.password = Digest::SHA1.hexdigest(password)
  end

# method to login
  def self.validate_login(email, password)
    user = User.find_by_email(email)
    # if existing user is found, then check if password on file matches the password they entered
    if user && user.password == Digest::SHA1.hexdigest(password)
      user
    else
    end
  end
      nil
end





