class=display
text=$(busctl --user -j get-property io.ntfd /weather openweathermap.strings RenderedTemplate | jq -r .data)


echo -e "{\"text\":\""$text"\", \"class\":\""$class"\"}"