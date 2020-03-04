class Review < ApplicationRecord
    belongs_to :user
    belongs_to :beer


    # def rating
    # @ave_rating= Review.find_by(:beer_id)
    # @ave_rating.average(:rating)
    # end
    def avg_rating
        if self.size > 0
            self.average(:rating)
        else
            'no rated yet'
        end
    end
   
end
