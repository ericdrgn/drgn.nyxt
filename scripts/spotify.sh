xdotool search --classname spotify windowkill %@ &

sleep 2s

/usr/share/spotify/spotify &
'''
sleep 10s

xdotool search --classname spotify set_desktop_for_window %@ 0 &




