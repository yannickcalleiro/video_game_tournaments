class TournamentsController < ApplicationController
  def index
    # render(:index)
  end

  def display
  	tournaments = Tournament.all

  	render(:json => tournaments)
  end

end
