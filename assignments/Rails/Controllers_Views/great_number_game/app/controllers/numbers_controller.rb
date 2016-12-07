class NumbersController < ApplicationController
  def index
    if !session[:count].present?
      session[:count] = 0
      session[:random_number] = rand(1..100)
    else session[:count] < 2
    end
  end

  def submit
      session[:count] += 1
      if params[:guess].present?
      	guess = params[:guess].to_i
      	if (guess < session[:random_number])
  		    flash[:message] = "Too low!"
        # elsif (guess < 100 or guess > 0)
        #   flash[:message] = "Please input a number value between 1 and 100."
        #       redirect_to action: "index"
      	elsif (guess > session[:random_number])
      		flash[:message] = "Too high!"
      	else
      		flash[:right] = " #{session[:random_number]} was the number!"
        end
      else
        flash[:message] = "Number Please!"
        session[:count] -= 1
      end
        redirect_to action: "index"
  end

  def reset
    reset_session
    redirect_to "/"
  end
end
