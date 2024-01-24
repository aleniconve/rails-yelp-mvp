class Review < ApplicationRecord
  RATINGS = [0,1,2,3,4,5]

  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, inclusion: { in: RATINGS }, numericality: {only_integer: true}
  

end
