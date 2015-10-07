class ArrangementsController < ApplicationController

  def new
    @hosts = Host.all
    @guests = Guest.all
  end

  def create
    Arrangement.make # this isn't being called and I don't know why
    @arrangements = Arrangement.all # this much works
#    redirect_to arrangements_path # also not working
  end

  def show
  end

  def index
    @arrangements = Arrangement.all
  end
end
