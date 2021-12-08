# conky_yr.no_weather
Conky weather from Norwegian Meteorological Institute and NRK.

Для начала открываем архив RU_russia.csv. В нём находим своё местоположение. Используем полученные данные для заполнения 
altitude=__________&lat=__________&lon=________ в прилагаемых файлах. Заполняем поля в crontab (crontab -e):

@reboot sleep 10 && /home/______/.conky/weather.sh

@reboot sleep 10 && /home/_________/.conky/lastChange

Правим conkyrc под свои требования + указываем пути.

Ставим conky в автозагрузку(Сеансы и запуск -> Автозапуск приложений): zsh -c "sleep 15 && conky".
