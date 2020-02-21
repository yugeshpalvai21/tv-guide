class PagesController < ApplicationController
  def home
  end

  def search
    @channels = Channel.search(params[:search_term])
    @shows = Show.search(params[:search_term])
  end
end
