class Affiliate < ApplicationRecord
  # has_secure_password
  belongs_to :users, optional: true

  validates :affiliateid, :password, :name, :address, :phone, presence: true
end
