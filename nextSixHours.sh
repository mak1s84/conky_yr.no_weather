#!/bin/zsh
# nextSixHours.sh


max=$(cat /home/______/.conky/weather_forecast.json | jq '.properties.timeseries[0].data.next_6_hours.details.air_temperature_max')
min=$(cat /home/_______/.conky/weather_forecast.json | jq '.properties.timeseries[0].data.next_6_hours.details.air_temperature_min')
precipitationAmount=$(cat /home/_________/.conky/weather_forecast.json | jq '.properties.timeseries[0].data.next_6_hours.details.precipitation_amount')


