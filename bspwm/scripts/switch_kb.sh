if [ -f /tmp/switch_kb ]; then 
    xinput set-prop 16 156 0
    xinput set-prop 14 156 1
    echo "logitech"
    del /tmp/switch_kb
else 
    xinput set-prop 16 156 1
    xinput set-prop 14 156 0
    echo "gaming"
    touch /tmp/switch_kb
fi 