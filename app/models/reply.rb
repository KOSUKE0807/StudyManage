class Reply < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
  belongs_to :question
end