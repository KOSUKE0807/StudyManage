class Student < ApplicationRecord
  belongs_to :teacher
  has_secure_password
end
