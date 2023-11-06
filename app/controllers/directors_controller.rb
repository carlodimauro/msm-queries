class DirectorsController < ApplicationController

  def index
      render(:template => "director_templates/list")
  end

  def show
    
    director_id = params.fetch("the_id")

    if director_id == "youngest"
        render(:template => "director_templates/young")
      elsif director_id == "eldest"
        render(:template => "director_templates/old")
      else
        matching_records = Director.where({ :id => director_id})
        @the_director = matching_records.first
        render(:template => "director_templates/details")
    end

  end



end
