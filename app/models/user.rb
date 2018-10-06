class User < ApplicationRecord
  belongs_to :teamcolor
  has_many :card, through: user_card

  validates :name, precence: true
  validates :username, precence: true
  validates :age, 
  validates :user_level, numericality: { only_integer: true }
end
