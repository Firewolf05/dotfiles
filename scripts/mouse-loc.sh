#! /bin/sh 


if [ $1 = "-x" ]; then 
    xdotool getmouselocation --shell | cut -b 3,4,5,6  | sed -n '1 p'
elif [ $1 = "-y" ]; then
    xdotool getmouselocation --shell | cut -b 3,4,5,6  | sed -n '2 p'
fi