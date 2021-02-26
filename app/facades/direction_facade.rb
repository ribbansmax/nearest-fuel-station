class DirectionFacade
  class << self
    def directions(from, to)
      response = Faraday.new("http://www.mapquestapi.com/directions/v2/route") do |f|
        f.params['to'] = to + ', Denver, CO'
        f.params['key'] = 'DHW2pMuJSoXZAw5bSxACon8elU23I1T7'
        f.params['from'] = from
      end.get
      data = parse(response)
      binding.pry
      data
    end

    private

    def parse(arg)
      JSON.parse(arg.body, symbolize_names: true)
    end
  end
end