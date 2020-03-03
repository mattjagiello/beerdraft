class User < ApplicationRecord
    has_many :reviews
    has_many :beers, through: :reviews
    validates :username, presence: true
    validates :username, uniqueness: true
end
