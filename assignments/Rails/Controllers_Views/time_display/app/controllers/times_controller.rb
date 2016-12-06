class TimesController < ApplicationController
  def main
    @time = Time.now
    # @time = Time.new
  end
end
