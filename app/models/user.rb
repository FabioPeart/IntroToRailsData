class User < ApplicationRecord
  belongs_to :teamcolor

  validates :name, precence: true
  validates :username, precence: true
  validates :age, 
  validates :user_level, numericality: { only_integer: true }
end
