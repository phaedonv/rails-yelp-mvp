class ReviewsController < ApplicationController
  def create
    set_restaurant
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save
      redirect_to @review, notice: 'Review was successfully created.'
    else
      render :new
    end
  end

  def new
    set_restaurant
    @review = Review.new
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_review
    @review = Review.find(params[:id])
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  # Only allow a list of trusted parameters through.
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
