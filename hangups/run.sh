docker run -it --rm \
 -v /etc/machine-id:/etc/machine-id:ro \
 -v /etc/localtime:/etc/localtime:ro \
 -v /var/run/dbus:/var/run/dbus \
 -e DBUS_SESSION_BUS_ADDRESS="unix:path=/var/run/user/1000/bus" \
 -v /var/run/user/$(id -u):/var/run/user/$(id -u) \
 --name hangups nsa/hangups
