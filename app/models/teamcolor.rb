class Teamcolor < ApplicationRecord
    has_many :users, dependent: :destroy


    validates :color, presence: true, uniqueness: true
    
end
