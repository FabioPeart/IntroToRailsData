class Teamcolor < ApplicationRecord
    has_many :users, dependent: :destroy


    validates :color, precence: true, uniqueness: true
end
