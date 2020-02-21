class PagesController < ApplicationController
  def home
  end

  def search
    @channels = Channel.where('LOWER(name) LIKE ?', "%#{params[:search_term].to_s.downcase}%")
    @shows = Show.where('LOWER(name) LIKE ?', "%#{params[:search_term].to_s.downcase}%")
  end
end
