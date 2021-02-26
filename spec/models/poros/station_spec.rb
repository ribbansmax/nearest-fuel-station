require 'rails_helper'

describe Station do
  it 'can create a station from a hash' do
    data = {
      :access_code=>"public",
      :access_days_time=>"MO: Not Specified; TU: Not Specified; WE: Not Specified; TH: Not Specified; FR: Not Specified; SA: Not Specified; SU: Not Specified",
      :access_detail_code=>nil,
      :cards_accepted=>nil,
      :date_last_confirmed=>"2021-02-26",
      :expected_date=>nil,
      :fuel_type_code=>"ELEC",
      :groups_with_access_code=>"Public",
      :id=>147967,
      :open_date=>nil,
      :owner_type_code=>nil,
      :status_code=>"E",
      :station_name=>"Seventeenth Street Plaza",
      :station_phone=>"800-663-5633",
      :updated_at=>"2021-02-26T00:13:15Z",
      :facility_type=>nil,
      :geocode_status=>"GPS",
      :latitude=>39.7501605,
      :longitude=>-104.9951224,
      :city=>"Denver",
      :intersection_directions=>nil,
      :plus4=>nil,
      :state=>"CO",
      :street_address=>"1225 17th St.",
      :zip=>"80202",
      :country=>"US",
      :bd_blends=>nil,
      :cng_dispenser_num=>nil,
      :cng_fill_type_code=>nil,
      :cng_psi=>nil,
      :cng_renewable_source=>nil,
      :cng_total_compression=>nil,
      :cng_total_storage=>nil,
      :cng_vehicle_class=>nil,
      :e85_blender_pump=>nil,
      :e85_other_ethanol_blends=>nil,
      :ev_connector_types=>["J1772"],
      :ev_dc_fast_num=>nil,
      :ev_level1_evse_num=>nil,
      :ev_level2_evse_num=>2,
      :ev_network=>"SemaCharge Network",
      :ev_network_web=>"https://semaconnect.com/",
      :ev_other_evse=>nil,
      :ev_pricing=>"$1.00-$6.00/Hr Variable Parking Fee",
      :ev_renewable_source=>nil,
      :hy_is_retail=>nil,
      :hy_pressures=>nil,
      :hy_standards=>nil,
      :hy_status_link=>nil,
      :lng_renewable_source=>nil,
      :lng_vehicle_class=>nil,
      :lpg_primary=>nil,
      :lpg_nozzle_types=>nil,
      :ng_fill_type_code=>nil,
      :ng_psi=>nil,
      :ng_vehicle_class=>nil,
      :access_days_time_fr=>nil,
      :intersection_directions_fr=>nil,
      :bd_blends_fr=>nil,
      :groups_with_access_code_fr=>"Public",
      :ev_pricing_fr=>nil,
      :ev_network_ids=>{:station=>["1114"], :posts=>["2642", "2643"]},
      :distance=>0.0934,
      :distance_km=>0.15031
    }
    station = Station.new(data)

    expect(station.name).to eq(data[:station_name])
    expect(station.fuel).to eq(data[:fuel_type_code])
    expect(station.address).to eq(data[:street_address])
    expect(station.hours).to eq(data[:access_days_time])
  end
end