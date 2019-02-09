class Affiliate < ApplicationRecord
  # has_secure_password

  validates :affiliateid, :password, :name, :address, :phone presence: true
end
