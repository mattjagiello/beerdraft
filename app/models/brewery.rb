class Brewery < ApplicationRecord
    has_many :beer_breweries
    has_many :beers, through: :beer_breweries
end
