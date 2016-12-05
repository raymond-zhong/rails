class UsersController < ApplicationController
  def index
    @users = User.all
    render json: User.all
  end
  def new
  end
  def new_create
    @users = User.create( name: params[:name])
redirect_to '/users'
  end
  def create
    @users = User.create( name: (0...8).map { (65 + rand(26)).chr }.join)
redirect_to '/users'
  end
  def show
    @users = User.all
    render json: User.find(params[:id])
  end

  def edit
    @users = User.find(params[:id])
  end
  def total
    @users = User.all
    render text: User.all.count
  end
  def update
    @users = User.find(params[:id]).update( name: params[:name])
    redirect_to '/users'
  end
end
