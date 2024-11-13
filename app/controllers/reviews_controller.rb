class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  def index
    @reviews = Review.all
  end
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to reviews_path
    else
      flash[:alert] = "Upss something went wrong.Please try once more, dont be lazy 😂!"
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
