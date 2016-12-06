class FormsController < ApplicationController
  def index
    if !session[:count]
      session[:count] = 0
    end
  end
  def submit
    session[:count] += 1
    session[:result] = params[:survey]
    flash[:success]  = "Thanks for submitting this form! You have submitted this form #{session[:count]} times(s) now."
    redirect_to '/results/'
  end
  def result
    @success_message = flash[:success]
    @result = session[:result]
  end
end
