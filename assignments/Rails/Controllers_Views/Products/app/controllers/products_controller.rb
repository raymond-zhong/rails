class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def create
    binding.pry
        @product = Product.new(product_params)

          if @product.save
            redirect_to '/products'
      else
        flash[:errors] = @product.errors.full_messages
        redirect_to products_new_path
    end
  end

  def comments
    @comments= Comment.all
  end

  def new
    @product = Product.new
    @categories = Category.all
  end

def show
  @product = Product.find(params[:id])
  # @category = Category.find(params[:id])
  @comment = Comment.new
  # @comments = Comment.find(product_id: params[:id])
end

def destroy
  @product = Product.find(params[:id]).destroy
  redirect_to '/products'
end

def edit
  @product = Product.find(params[:id])
  @categories = Category.all

end
def update
  # binding.pry
  @product = Product.find(params[:id])
  if @product.update_attributes(product_params)
    redirect_to controller: 'products', action:'show', id:params[:id]
  else
    flash[:errors] = @product.errors.full_messages
    redirect_to "/products/#{@product.id}/edit"
  end
end

private
def product_params
params.require(:product).permit(:name, :description, :pricing, :category_id)
end

end
