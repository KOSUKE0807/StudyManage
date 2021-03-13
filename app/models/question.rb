class Question < ApplicationRecord
  belongs_to :student
  belongs_to :teacher

  has_many :replies, dependent: :destroy
end
