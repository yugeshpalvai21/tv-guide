class ShowsController < ApplicationController
  def index
    @shows = Show.includes(:channel).all
  end

  def show
  end
end