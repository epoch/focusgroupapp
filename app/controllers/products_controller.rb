class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new

    #need to pass in company ID here -->  error when creating new products
  end

  def create
    @product = Product.create params[:product]
    @product.company_id = @company_authenticated.id
    @product.save
    redirect_to product_path(@product)
  end

  def edit
    @product = Product.find(params[:id])
    #add company filter for editing here
    render 'new'
  end

  def update
    product = Product.find(params[:id])
    product.update_attributes params[:product]
    redirect_to product_path
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy

    redirect_to products_path
  end

  def show_answers
    @product = Product.find(params[:id])
  end
end