class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
    @average_rating = average_rating

  end

  private
  def average_rating
    total = @episode.appearances.map{ |app| app.rating}.sum
    number_of_ratings = @episode.appearances.count.to_f
    average = total/number_of_ratings
  end
end
