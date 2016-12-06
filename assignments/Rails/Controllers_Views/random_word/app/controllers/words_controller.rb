class WordsController < ApplicationController
  def index
    session[:count] = 0 if !session[:count].present?
    end
def generate
  session[:count] += 1
  session[:randomword] = ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(14).join
  redirect_to action: "index"
end
  def clear
  reset_session
  redirect_to "/"
end
end
