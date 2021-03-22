class Reply < ApplicationRecord
  include Hashid::Rails
  
  belongs_to :student
  belongs_to :teacher
  belongs_to :question
end
