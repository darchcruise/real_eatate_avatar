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


  def encrypt_password
    self.password = Digest::SHA1.hexdigest(password)
  end

end
