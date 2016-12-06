class WordsController < ApplicationController
  def index
    if !session[:count]
      session[:count] = 0
    else
    session[:count] += 1
  end
  session[:randomword] = ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(14).join
end
  def clear
  session[:count] = 0
  session[:randomword] = ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(14).join
  redirect_to "/"
end
end
