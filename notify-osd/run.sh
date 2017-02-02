docker run -it --rm \
 -v /etc/machine-id:/etc/machine-id:ro \
 -v /etc/localtime:/etc/localtime:ro \
 -v /tmp/.X11-unix:/tmp/.X11-unix \
 -v /var/run/dbus:/var/run/dbus \
 -v /var/run/user/$(id -u):/var/run/user/$(id -u) \
 $(env | cut -d= -f1 | awk '{print "-e", $1}') \
 -e DISPLAY=unix$DISPLAY \
 -e DBUS_SESSION_BUS_ADDRESS="unix:path=/var/run/user/1000/bus" \
 -v /etc/passwd:/etc/passwd:ro \
 -v /etc/group:/etc/group:ro \
 -u 1000 -w "$HOME" \
 -v /home/nico/.Xauthority:/home/nico/.Xauthority \
 --name notify-osd \
 nsa/notify-osd

