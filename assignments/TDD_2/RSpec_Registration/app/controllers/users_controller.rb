class UsersController < ApplicationController
  def index
    # @user = User.new
  end
  def show
    @user = User.find(params[:id])
  end

  def new
    # binding.pry
    @user = User.new(user_params)
    # @user = User.create(params[:user])
  if @user.save
        redirect_to "/users/#{@user.id}"
  else
    flash[:errors] = @user.errors.full_messages
    redirect_to '/'
  end
  end
  private
def user_params
params.require(:user).permit(:first_name, :last_name, :email, :password, :confirm_password)
end
end
