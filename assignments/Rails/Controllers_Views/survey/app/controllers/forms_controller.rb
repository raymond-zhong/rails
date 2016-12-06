class FormsController < ApplicationController
  def index
  end

  def result
    if session[:count] == nil
      session[:count] = 0
    else
    session[:count] += 1
    # @user =  User.create( params[:user])
    flash[:message]     = "Thanks for submitting this form! You have submitted this form " + session[:count].to_s + " times now."
    session[:name]      = params[:name]
    session[:location]  = params[:location]
    session[:language]  = params[:language]
    session[:comment]   = params[:comment]
    render flash: {}
  end
  end
end
