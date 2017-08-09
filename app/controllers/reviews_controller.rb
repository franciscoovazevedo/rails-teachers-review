class ReviewsController < ApplicationController
  def new
    @teacher = Teacher.find(params[:teacher_id])
    @review = @teacher.reviews.new
  end

  def create
    @review = Review.new(review_params)
    @review.teacher = Teacher.find(params[:teacher_id])
    if @review.save
      redirect_to teacher_path(@review.teacher)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
