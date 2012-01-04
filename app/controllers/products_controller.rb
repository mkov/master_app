class ProductsController < ApplicationController
  load_and_authorize_resource

  def index
    @category = Category.find(params[:category_id])
    @products = @category.products.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @category = Category.find(params[:category_id])
    @product = Product.new
  end

  def edit
    @category = Category.find(params[:category_id])
    @product = @category.products.find(params[:id])
  end

  def create
    @category = Category.find(params[:category_id])
    @product = @category.products.create(params[:product])
    redirect_to category_path(@category)
  end

  def update
    @category = Category.find(params[:category_id])
    @product = @category.products.find(params[:id])
    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to category_product_path(@category, @product), notice: t(:product_updated) }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @category = Category.find(params[:category_id])
    @product = @category.products.find(params[:id])
    @product.destroy
    redirect_to category_path(@category)
  end
end
