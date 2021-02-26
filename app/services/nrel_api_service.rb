class NrelApiService
  class << self
    def closest_station(location)
      # response = faraday.get('/nearest.json') do |f|
      #   f.params['location'] = location
      # end

      response = Faraday.new('https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=z05CI9wA2eIqI4alzu1MlzA4piredZlOvqzyVpQO&location=1331 17th St LL100, Denver, CO 80202').get
      data = parse(response)[:fuel_stations][0]
    end

    private

    def parse(arg)
      JSON.parse(arg.body, symbolize_names: true)
    end

    def faraday
      Faraday.new('https://developer.nrel.gov/api/alt-fuel-stations/v1') do |faraday|
        faraday.params['api_key'] = 'z05CI9wA2eIqI4alzu1MlzA4piredZlOvqzyVpQO'
      end
    end
  end
end