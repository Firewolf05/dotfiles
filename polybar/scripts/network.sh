open_nm () {
    touch /tmp/nm-lockfile
    nm-connection-editor 
}
close_nm () {
    del /tmp/nm-lockfile
    killall nm-connection-editor 
}

if [ -f /tmp/nm-lockfile ]; then
    close_nm 
else 
    open_nm
fi 