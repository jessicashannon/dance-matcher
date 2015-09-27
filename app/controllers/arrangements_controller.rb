class ArrangementsController < ApplicationController

  def create
    @arrangement = Arrangement.create
    redirect_to arrangements_path
  end

  def index
    @arrangements = Arrangement.all
  end
end
