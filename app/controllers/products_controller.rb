class ProductsController < ApplicationController
  def index
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create params[:product]
    #@product.company_id = @authenticated.id
    @product.save
    redirect_to product_path(@product)
  end

  def edit
    @product = Product.find(params[:id])
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
end