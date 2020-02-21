class ShowsController < ApplicationController
  before_action :authenticate_user!, only: [:add_favourite]
  def index
    @shows = Show.includes(:channel).all
  end

  def show
    @show = Show.find(params[:id])
  end

  def add_favourite
    @show = Show.find(params[:id])
    @favourite = current_user.favourites.build
    @favourite.show = @show
    @favourite.save
    redirect_to root_path, notice: 'Adds show to favourite list' 
  end
end