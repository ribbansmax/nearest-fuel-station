class StationFacade
  class << self
    def closest_station(location)
      data = NrelApiService.closest_station(location)
    end
  end
end