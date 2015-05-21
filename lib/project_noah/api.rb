require 'net/http'

module ProjectNoah::Api

  BASE_URL = 'http://beta.noah.dost.gov.ph/api/'
  ENDPOINT = %w(doppler mtsat latest_contour cumulative_rainfall stations our_day_forecast four_hour_forecast flood_maps landslide_maps storm_surge_maps muncities provinces regions)

  class << self

    ENDPOINT.each do |endpoint|
      define_method(endpoint) do
        uri = URI("#{BASE_URL}#{endpoint}")
        Net::HTTP.get(uri)
      end
    end

    # Handle this later
    # api/station/[station_type]/[station_id]
    # api/reports/flood/[year]{/[month_index]}

  end
end
