# conky_yr.no_weather

Conky Weather From Norwegian Meteorological Institute and NRK.

To begin with, open the ru_russia.csv archive. In it, we find our location. We use the received data to fill in altitude=&lat=&lon=________ in the attached files. Fill in the fields in Crontab (crontab -e):

@reboot Sleep 10 && /home/______/.Conky/weather.sh

@reboot Sleep 10 && /home/_________/.Conky/lastChange

We edit conkyrc according to our requirements + specify the paths.

Set conky to autoload (Sessions and startup -> Application autostart): zsh -c "sleep 15 && conky".

__________________________

Для начала открываем архив RU_russia.csv. В нём находим своё местоположение. Используем полученные данные для заполнения 
altitude=__________&lat=__________&lon=________ в прилагаемых файлах. Заполняем поля в crontab (crontab -e):

@reboot sleep 10 && /home/______/.conky/weather.sh

@reboot sleep 10 && /home/_________/.conky/lastChange

Правим conkyrc под свои требования + указываем пути.

Ставим conky в автозагрузку(Сеансы и запуск -> Автозапуск приложений): zsh -c "sleep 15 && conky".
