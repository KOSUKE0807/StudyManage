class Teacher < ApplicationRecord
  validates :email, uniqueness: true
  has_many :students
  has_secure_password
end
