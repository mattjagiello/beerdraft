class Review < ApplicationRecord
    belongs_to :user
    belongs_to :beer


    # def rating
    # @ave_rating= Review.find_by(:beer_id)
    # @ave_rating.average(:rating)
    # end
    
   
end
