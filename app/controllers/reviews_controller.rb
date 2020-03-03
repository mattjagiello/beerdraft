class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to reviews_path
  end

  def index
    @reviews = Review.all
  end

  def show
  end

  def delete
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :tracked, :user_id, :beer_id)
  end

end
