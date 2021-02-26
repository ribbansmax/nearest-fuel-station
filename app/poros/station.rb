class Station
  attr_reader :name, :fuel, :address, :hours

  def initialize(data)
    @name = data[:station_name]
    @fuel = data[:fuel_type_code]
    @address = data[:street_address]
    @hours = data[:access_days_time]
  end
end