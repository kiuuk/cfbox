class User < ApplicationRecord
  # has_secure_password
  belongs_to :affiliate

  validates :userid, :password, :name, presence: true
end
