class RpgsController < ApplicationController
  def index
        if !session[:gold].present?
            session[:gold] = 0
          end
        if !session[:log].present?
            session[:log] = []
          end
          @activities = session[:log]
  end

  def farm
        @num = rand(10..21)
        session[:gold] += @num
        @time = Time.now
        session[:log].push("Earned #{@num} golds from the farm! #{@time.strftime("(%Y/%m/%d  %-I:%M  %p)")}")

        # @message1 = " Earned "
        # @message2 = " golds from the farm!"
        # @finalmessage = @message1 + @num.to_s + @message2 + " " + Time.new("(%Y/%m/%d  %-I:%M  %p)").to_s
        # @fmessage= '<div class ="green">' + @finalmessage + session[:log]
        # session[:log] = @fmessage
        # session[:fmessage]= @fmessage
    redirect_to "/"
  end

  def cave
        @num = rand(5..11)
        session[:gold] += @num
        @time = Time.now
        session[:log].push("Earned #{@num} golds from the cave! #{@time.strftime("(%Y/%m/%d  %-I:%M  %p)")}")

        # @message1 = " Earned "
        # @message2 = " golds from the cave!"
        # @finalmessage = @message1 + @num.to_s + @message2 + " " + Time.new("(%Y/%m/%d  %-I:%M  %p)").to_s
        # @fmessage= '<div class ="green">' + @finalmessage + session[:log]
        # session[:log] = @fmessage
        # session[:fmessage]= @fmessage
    redirect_to "/"
  end

  def casino
        @num = rand(-50..51)
        session[:gold] = @num + session[:gold]
        @time = Time.now
        if @num > 0
        session[:log].push("Earned #{@num} golds from the casino! #{@time.strftime("(%Y/%m/%d  %-I:%M  %p)")}")

            # @message1 = " Earned "
            # @message2 = " golds from the casino!"
        else
          session[:log].push("Entered a casino and lost #{@num} golds... Ouch... #{@time.strftime("(%Y/%m/%d  %-I:%M  %p)")}")

            # @message1 = " Entered a casino and lost "
            # @message2 = " golds... Ouch..."
        # @finalmessage = @message1 + @num.to_s + @message2 + " " + Time.new("(%Y/%m/%d  %-I:%M  %p)").to_s
      end
        # if (@message1.length > 8)
        #   @fmessage= '<div class ="red">' + @finalmessage + session[:log]
        # else (@message1.length < 9)
        #   @fmessage= '<div class ="green">' + @finalmessage + session[:log]
        #   end
        # session[:log] = @fmessage
        # session[:fmessage]= @fmessage
    redirect_to "/"
  end

  def house
        @num = rand(2..6)
        session[:gold] += @num
        @time = Time.now
        session[:log].push("Earned #{@num} golds from the house! #{@time.strftime("(%Y/%m/%d  %-I:%M  %p)")}")

        # @message1 = " Earned "
        # @message2 = " golds from the house!"
        # @finalmessage = @message1 + @num.to_s + @message2 + " " + Time.new("(%Y/%m/%d  %-I:%M  %p)").to_s
        # @fmessage= '<div class ="green">' + @finalmessage + session[:log]
        # session[:log] = @fmessage
        # session[:fmessage]= @fmessage
    redirect_to "/"
  end

  def reset
    reset_session
    redirect_to "/"
  end
end
