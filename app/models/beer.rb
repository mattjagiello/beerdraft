class Beer < ApplicationRecord
    has_many :reviews
    has_many :beer_breweries
    has_many :users, through: :reviews
    has_many :breweries, through: :beer_breweries
end
