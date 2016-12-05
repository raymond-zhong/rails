class SayController < ApplicationController
  def say_hello
    render text: "Saying Hello!"
  end
  def hello_joe
    render text: "Saying Hello Joe!"
  end
  def hello
    render text: "Hello CodingDojo!"
  end
  def index
    render text: "What do you want me to say???"
  end
  def times
    session[:count] += 1
    render text: "You visited this url " +session[:count].to_s + " time"
    # render text:  session[:count]
    # render text: "time"
  end
  def times_restart
    session[:count] = 0
    render text:  "Destroyed the session!"
  end
end
