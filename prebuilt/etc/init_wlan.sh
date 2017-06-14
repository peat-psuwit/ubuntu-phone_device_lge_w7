#!/system/bin/sh
while ! [ -d /sys/class/net/wlan0 ]; do
    # sleep first to avoid issue when called just after wcnss-service start
    sleep 1
    echo sta > /sys/module/wlan/parameters/fwpath
done
