class StationFacade
  class << self
    def closest_station(location)
      data = NrelApiService.closest_station(location)
      Station.new(data)
    end
  end
end