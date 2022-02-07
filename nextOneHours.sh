#!/bin/zsh

#set -x
# File location ~/.conky/

windSpeed=$(cat /home/_______/.conky/weather_forecast.json | jq '.properties.timeseries[0].data.next_1_hours.summary.symbol_code' | sed s/'"'// | sed s/'"'//)

case $windSpeed in
    "snow")
        echo "Снег"
    ;;

    "lightsnow")
        echo "Слабый снег"
    ;;

    "cloudy")
        echo "Облачно"
    ;;

    "sleet")
        echo "Дождь + снег"
    ;;

    "lightrain")
        echo "Слабый дождь"
    ;;

    "rain")
        echo "Дождь"
    ;;

    "heavyrain")
        echo "Сильный дождь"
    ;;

    "lightsleet")
        echo "Лёкгий дождь + снег"
    ;;

    "lightsnowshowers_day")
        echo "Слабый снег"
    ;;

    "snowshowers")
        echo "Снегопад"
    ;;

    "lightsnowshowers")
        echo "Небольшой снегопад"
    ;;

    "partlycloudy")
        echo "Переменная облачность"
    ;;

    "partlycloudy_day")
        echo "Переменная облачность"
    ;;

    "partlycloudy_night")
        echo "Переменная облачность"
    ;;

    "clearsky")
          echo "Безоблачно"
      ;;

    "fair")
          echo "Ясно"
      ;;

  "fog")
        echo "Туман"
    ;;

  "heavyrainandthunder")
        echo "Сильный дождь и гром"
    ;;

  "heavyrainshowers")
        echo "Ливень"
    ;;

  "heavyrainshowersandthunder")
        echo "Проливной дождь+гром"
    ;;

  "heavysleet")
        echo "Сильный мокрый снег"
    ;;

  "heavysleetandthunder")
        echo "Сильный мокрый снег+гром"
    ;;

  "heavysleetshowers")
        echo "Сильный дождь+мокрый снег"
    ;;

  "heavysleetshowersandthunder")
        echo "Сильный дождь+мокрый снег+гром"
    ;;

  "sleetshowers")
          echo "Ледяной дождь"
      ;;

  "heavysnow")
        echo "Сильный снег"
    ;;

  "heavysnowandthunder")
        echo "Сильный снег+гром"
    ;;

  "heavysnowshowers")
        echo "Сильный снегопад"
    ;;

  "heavysnowshowersandthunder")
        echo "Сильный снегопад и гром"
    ;;

    "lightrainandthunder")
        echo "Небольшой дождь и гром"
    ;;

    "rainandthunder")
            echo "Дождь и гром"
        ;;

      "rainshowers")
        echo "Ливневые дожди"
        ;;

    "lightrainshowers")
        echo "Небольшой ливневый дождь"
    ;;

    "lightrainshowersandthunder")
        echo "Небольшой дождь, ливень+гром"
    ;;

    "rainshowersandthunder")
            echo "Ливневый дождь+гром"
        ;;

    "lightsleetandthunder")
        echo "Небольшой мокрый снег+гром"
    ;;

    "lightsleetshowers")
        echo "Небольшой дождь+мокрый снег"
    ;;

    "lightsnowandthunder")
        echo "Небольшой снег и гром"
    ;;

    "lightssleetshowersandthunder")
        echo "Небольшой дождь+мокрый снег+гром"
    ;;

    "lightssnowshowersandthunder")
        echo "Небольшой дождь+мокрый снег+гром"
    ;;



esac
