class Teacher < ApplicationRecord
  validates :email, uniqueness: true
  has_many :students, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_secure_password
end
