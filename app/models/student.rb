class Student < ApplicationRecord
  validates :email, uniqueness: true
  belongs_to :teacher
  has_secure_password
  has_many :study_records, dependent: :destroy
  has_many :monthly_goals, dependent: :destroy
  has_one :school_choise, dependent: :destroy
  has_many :messages, dependent: :destroy
end
