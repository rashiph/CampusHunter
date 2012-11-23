class User < ActiveRecord::Base
  attr_accessible :created_by, :password, :password_salt, :role, :updated_by, :username
end
