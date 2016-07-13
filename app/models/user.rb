class User < ActiveRecord::Base
  has_many :lists
  has_many :tasks, :through => :lists
  has_secure_password
  validates :username, :email, :presence => true, :uniqueness => true
end
