class User < ApplicationRecord
  belongs_to :teamcolor
  has_many :user_cards
  has_many :cards, through: :user_cards

  validates :name, presence: true
  validates :username, presence: true
  validates :age, numericality: { only_integer: true }
  validates :user_level, presence: true, numericality: { only_integer: true }
end
