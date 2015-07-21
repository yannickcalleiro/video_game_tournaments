class TournamentsController < ApplicationController
  def index
    render(:index)
  end

  def display
  	tournaments = Tournament.all

  	render(:json => tournaments)
  end

  def create
  	new_tournaments = Tournament.new(tournament_params)
  	new_tournaments.save

  	render(:json => new_tournaments, :status => 201)
  end

  private

  def tournament_params
  	return params.require(:tournament).permit(:name)
  end
end
