#ssdir="/home/george/.local/share/PrismLauncher/instances/wynn-1.18/.minecraft/screenshots"
inotifywait -m ./path -e create -e moved_to |
    while read dir action file; do
        echo "The file '$file' appeared in directory '$dir' via '$action'"
        copyq write image/png - < $dir/$file 
        copyq select 0 
    done 