class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  before_action :authenticate_user_or_redirect!, only: [:new, :create]

  def index
    @reviews = Review.order(created_at: :desc)
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

  def authenticate_user_or_redirect!
    unless user_signed_in?
      redirect_to new_user_registration_path, alert: "Please sign up to leave a review."
    end
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
