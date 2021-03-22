class Question < ApplicationRecord
  include Hashid::Rails
  
  belongs_to :student
  belongs_to :teacher

  has_many :replies, dependent: :destroy
end
