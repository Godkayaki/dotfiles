#!/bin/bash
# Godkayaki ~
# Show Spotify current song without mpd or any extra application other than spotify.

if pgrep -x "spotify" > /dev/null; then
    artist=`playerctl --player=spotify metadata artist`
    title=`playerctl --player=spotify metadata title`
    echo "" $artist "-" $title
else
    echo "Spotify not running"
fi