class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @list = List.find(params[:id])
  end
end
