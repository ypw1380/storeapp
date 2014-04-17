class Card < ActiveRecord::Base
  belongs_to :user
  
  validates :number, length: {in: 15..16}
end
