require 'rails_helper'

describe StationFacade do
  it 'can find the closest station' do
    station = StationFacade.closest_station("1331 17th St LL100, Denver, CO 80202")
    expect(station.class).to eq(Station)
  end
end