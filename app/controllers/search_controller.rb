class SearchController < ApplicationController
  def index
    @station = StationFacade.closest_station(params['location'])
    @directions = DirectionFacade.directions(params['location'], @station.address)
  end
end