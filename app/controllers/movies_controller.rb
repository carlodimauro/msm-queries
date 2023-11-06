class MoviesController < ApplicationController

  def index
    render(:template => "movie_templates/list")
end

def show
  movie_id = params.fetch("the_id")

  matching_records = Movie.where({ :id => movie_id})
  @the_movie = matching_records.first

  render(:template => "movie_templates/details")
end


end
