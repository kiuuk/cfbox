class User < ApplicationRecord
  # has_secure_password
  has_many :affiliate

  validates :userid, :password, :name, presence: true
end
