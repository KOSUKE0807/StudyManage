class Student < ApplicationRecord
  validates :email, uniqueness: true
  belongs_to :teacher
  has_secure_password
  has_many :study_records
end
