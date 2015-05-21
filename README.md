# Project Noah

A Ruby wrapper for Project Noah API
visit http://beta.noah.dost.gov.ph/apidocs/

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'project_noah'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install project_noah

## Usage

```ruby
data_response = ProjectNoah::Api.doppler
@doppler = JSON.parse(data_response)
```

Endpoint list
* doppler
* mtsat
* latest_contour
* cumulative_rainfall
* stations
* four_day_forecast
* four_hour_forecast
* flood_maps
* landslide_maps
* storm_surge_maps
* muncities
* provinces
* regions

## Contributing

1. Fork it ( https://github.com/nadflores/project_noah/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
