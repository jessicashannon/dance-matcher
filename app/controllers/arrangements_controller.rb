class ArrangementsController < ApplicationController

  def new
    @hosts = Host.all
    @guests = Guest.all
  end

  def create
    Arrangement.make
    @arrangements = Arrangement.all
  end

  def show
  end

  def index
    @arrangements = Arrangement.all
  end
end
