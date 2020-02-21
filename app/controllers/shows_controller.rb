class ShowsController < ApplicationController
  def index
    @shows = Show.includes(:channel).all
  end

  def show
    @show = Show.find(params[:id])
  end
end