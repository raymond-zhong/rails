class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    # if user_params[:first_name].length < 3
    #   flash[:message] = "Length of first name needs to be more than 3 characters."
    #   redirect_to '/users/new'
    # elsif user_params[:last_name].length < 3
    #   flash[:message] = "Length of last name needs to be more than 3 characters."
    #   redirect_to '/users/new'
    # elsif user_params[:email].length < 0
    #   flash[:message] = "Length of email can not be blank."
    #   redirect_to '/users/new'
    # else
        @user = User.new(user_params)
        # binding.pry
        # respond_to do |format|
          if @user.save
            redirect_to '/users'

        # format.html { redirect_to '/users', notice: 'User was succesfully created.'}
      else
        flash[:errors] = @user.errors.full_messages
        redirect_to users_new_path
        # format.html { render action: 'new'}
      # end
    end
      # redirect_to '/users'
  end
# end

  def new
    @user = User.new
  end

def show
  @user = User.find(params[:id])
end

def destroy
  @user = User.find(params[:id]).destroy
  redirect_to '/users'
end

def edit
  @user = User.find(params[:id])
  # binding.pry
end
def update
  # binding.pry
  @user = User.find(params[:id])
  if @user.update_attributes(user_params)
    redirect_to controller: 'users', action:'show', id:params[:id]
  else
    flash[:errors] = @user.errors.full_messages
    redirect_to "/users/#{@user.id}/edit"
  end
end

private
def user_params
params.require(:user).permit(:first_name, :last_name, :email, :password)
end

end
