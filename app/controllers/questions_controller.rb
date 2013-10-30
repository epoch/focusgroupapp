class QuestionsController < ApplicationController
# I want a question to belong to a product, and I want to only see the
# questions for the specific product on the product page

  def new
    @question = Question.new
  end

  def create
    @question = Question.create params[:question]
    @product = Product.find params[:product_id]
    @question.product_id = @product.id

    @question.save
    redirect_to product_path(@product)
  end

  def answers
    params[:answer].each do |question_id, value|
      answer = Answer.create(:question_id => question_id,
                            :answer => value, :user_id => @authenticated.id)
    end
    redirect_to root_path
  end
end