class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    @episodes_sorted = episodes_sorted
  end
  private
  def episodes_sorted
    @guest.episodes.sort_by{|episode| episode.date}
  end


end
