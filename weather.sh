#! /bin/zsh
#wearher.sh


curl -X GET --header 'Accept: application/json' 'https://api.met.no/weatherapi/locationforecast/2.0/complete?altitude=___&lat=______&lon=________' | jq '.' > /home/________/.conky/weather_forecast.json

