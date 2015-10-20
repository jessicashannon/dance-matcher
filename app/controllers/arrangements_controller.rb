class ArrangementsController < ApplicationController
  layout :layout_choice
  def new
    @hosts = Host.all
    @guests = Guest.all
  end

  def create
    Arrangement.make
    @arrangements = Arrangement.all
    render :index, :layout => 'admin'
  end

  def show
  end

  def index
    @arrangements = Arrangement.all
  end

  private

  def layout_choice
    admin_signed_in? ? "admin" : "application"
  end

end
