class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path, notice: "Product was successfully created."
    else
      flash.now[:alert] = "Product was not created."
      
      render :new, :status => :unprocessable_entity
    end
  end

  def index
    @products = Product.all.where(publish: true)
  end

  def update
    # to implement
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      puts "Product was successfully deleted."
      flash[:notice] = "Product was successfully deleted."
      redirect_to products_path
    else
      puts "Product was not deleted."
      flash.now[:alert] = "Product was not deleted."
      render :index
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :code, :description, :price, :publish)
  end
end
