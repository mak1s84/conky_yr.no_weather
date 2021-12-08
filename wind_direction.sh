#!/bin/zsh

#set -x

# -eq	сравнениt чисел в bash для равенства, возвращает 0, если равно	
# -ge	сравнения чисел в bash, если больше или равно. Результат возвращает 0, если больше или равно	
# -gt	сравнивает числа в bash, если больше.
# -le	сравнивает числа в bash, если меньше или равно.	
# -lt	сравнивает числа в bash, если меньше.	
# -ne	сравнивает числа в bash, если не равно или нет.

# if [[ $windSpeed -ge 337 ]] && [[ $windSpeed -lt 360 ]] || [[ $windSpeed -ge 0 ]] && [[ $windSpeed -lt 22 ]]; then

windSpeed=$(cat /home/mak1s/.conky/weather_forecast.json | jq '.properties.timeseries[0].data.instant.details.wind_from_direction')  


if [[ $windSpeed -ge 337 ]] && [[ $windSpeed -le 360 ]] ; then
        echo "Северное"
elif [[ $windSpeed -ge 0 ]] && [[ $windSpeed -lt 22 ]] ; then
        echo "Северное"
elif [[ $windSpeed -ge 22 ]] && [[ $windSpeed -lt 67 ]]; then
        echo "Северо-Восточное"

elif [[ $windSpeed -ge 67 ]] && [[ $windSpeed -lt 112 ]]; then
        echo "Восточное"

elif [[ $windSpeed -ge 112 ]] && [[ $windSpeed -lt 157 ]]; then
        echo "Юго-Восточное"

elif [[ $windSpeed -ge 157 ]] && [[ $windSpeed -lt 202 ]]; then
        echo "Южное"

elif [[ $windSpeed -ge 202 ]] && [[ $windSpeed -lt 247 ]] ; then
        echo "Юго-Западное"

elif [[ $windSpeed -ge 247 ]] && [[ $windSpeed -lt 292 ]]; then
        echo "Западное"

elif [[ $windSpeed -ge 292 ]] && [[ $windSpeed -lt 337 ]]; then
        echo "Северо-Западное"

fi

#echo $windSpeed
