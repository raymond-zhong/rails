class CommentsController < ApplicationController
  def show
    @comments= Comment.all
  end

  def create
    # binding.pry
    product = Product.find(params[:id].to_i)
    product.comments.create(content: params[:comment][:content])
        redirect_to "/products/#{params[:id]}"
  end
  def destroy
  comment = Comment.find(params[:id])
  # binding.pry
  comment.destroy
  redirect_to "/products/#{comment.product_id}"
end
def destroy1
comment = Comment.find(params[:id])
# binding.pry
comment.destroy
redirect_to "/comments/"
end
end
