inotifywait -m /home/george/.local/share/PrismLauncher/instances/wynn-1.18/.minecraft/screenshots -e create -e moved_to |
    while read dir action file; do
        echo "The file '$file' appeared in directory '$dir' via '$action'"
        cp $dir$file ./path/$file
    done