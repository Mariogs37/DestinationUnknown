class ItinerariesController < ApplicationController
  before_filter :ensure_logged_in

  def index
    @itineraries = @auth.itineraries
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end