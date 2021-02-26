class SearchController < ApplicationController
  def index
    @station = StationFacade.closest_station(params[:location])
  end
end