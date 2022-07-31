
fun () {
if [ $(cat ~/.polybar-yt-module) == "" ]; then 
    echo "" > ~/.polybar-yt-module
else 
    echo "" > ~/.polybar-yt-module
fi 
}

if [ $1 == "echosym" ]; then 
    cat ~/.polybar-yt-module
else 
    fun 
    reload-pb
fi 