class User < ActiveRecord::Base
  attr_accessible :created_by, :password, :password_salt, :role, :updated_by, :username, :password_confirmation

  before_save :encrypt_password

  def self.authenticate(username, password)
    user = find_by_username(username)
    if user && user.password == BCrypt::Engine.hash_secret(password, user.password_salt)
      return user
    else
      nil
    end
  end

  validates :username, :password, :presence => true
  validates :password, :confirmation => {:message => "you entered do not match"}
  validates :username, :uniqueness => true
  validates :password, :length => {:in => 4..20}

  def encrypt_password
    self.password_salt = BCrypt::Engine.generate_salt
    self.password = BCrypt::Engine.hash_secret(password, password_salt)
  end
end
