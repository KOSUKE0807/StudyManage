class Student < ApplicationRecord
  validates :email, uniqueness: true
  belongs_to :teacher
  has_secure_password
end
