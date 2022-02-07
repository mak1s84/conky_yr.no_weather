#!/bin/zsh
#nextSixHours.sh
# File location ~/.conky/
#set -x


#Запросили максимальную температуру \ Asked for maximum temperature
tempMax=$(cat /home/mak1s/.conky/weather_forecast.json | jq '.properties.timeseries[0].data.next_6_hours.details.air_temperature_max')

#Запросили минимальную температуру \ Asked for the minimum temperature
tempMin=$(cat /home/mak1s/.conky/weather_forecast.json | jq '.properties.timeseries[0].data.next_6_hours.details.air_temperature_min')

#Создали функцию, высчитывающую среднее арифметическое значение \ Created a function that calculates the arithmetic mean.
print_avg ()
    {
        let "plus = $tempMax + $tempMin" ;
        let "avg = $plus / 2" ;
        printf %.1f "$avg"
    }
#Вызвали функцию \ Function call

    print_avg $tempMax $tempMin

