class ArrangementsController < ApplicationController

  def create
    Arrangement.make
    redirect_to arrangements_path
  end

  def index
    @arrangements = Arrangement.all
    binding.pry
  end
end
