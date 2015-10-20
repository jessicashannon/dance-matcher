class GuestsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :authenticate_admin!, only: [:create, :edit, :update, :destroy, :index]
  before_action :set_guest, only: [:show, :edit, :update, :destroy]

  layout :layout_choice

  def index
    @guests = Guest.all
  end

  def show
  end

  def new
    @guest = Guest.new
  end

  def edit
  end

  def create
    @guest = Guest.new(guest_params)

    respond_to do |format|
      if @guest.save
        format.html { redirect_to @guest, notice: 'Guest was successfully created.' }
        format.json { render :show, status: :created, location: @guest }
      else
        format.html { render :new }
        format.json { render json: @guest.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @guest.update(guest_params)
        format.html { redirect_to @guest, notice: 'Guest was successfully updated.' }
        format.json { render :show, status: :ok, location: @guest }
      else
        format.html { render :edit }
        format.json { render json: @guest.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @guest.destroy
    respond_to do |format|
      format.html { redirect_to guests_url, notice: 'Guest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # def unmatched
  #   render partial: 'guests/guests', locals: {guests: Guest.unmatched}, layout: 'layouts/admin'
  # end

  private

    def layout_choice
      admin_signed_in? ? "admin" : "application"
    end

    def set_guest
      @guest = Guest.find(params[:id])
    end

    def guest_params
      params.require(:guest).permit(:smokes, :dogs, :cats, :bedding, :towels, :name)
    end
end
