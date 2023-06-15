text=
tooltip=$(uptime -p | sed -e 's/up //g'| sed -e 's/ hours/h/g' | sed -e 's/ minutes/m/g' | sed -e 's/,//g')
class=sysmenu

echo -e "{\"text\":\""$text"\", \"tooltip\":\""$tooltip"\", \"class\":\""$class"\"}"