#! /bin/zsh
#wearher.sh
# File location ~/.conky/

curl -X GET --header 'Accept: application/json' 'https://api.met.no/weatherapi/locationforecast/2.0/complete?altitude=___&lat=______&lon=________' | jq '.' > /home/________/.conky/weather_forecast.json

