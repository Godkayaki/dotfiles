#!/bin/bash
#
# Show Spotify current song

#spotifyon=$(ps -e |grep spotify)
#if [ -z "$spotifyon" ]; then
#    echo ""
#else
#temp=$({playerctl --player=spotify metadata} 2>&1)
#temp2=$({playerctl --player=justaplaceholder metadata} 2>&1)
#echo $temp $temp2
if pgrep -x "spotify" > /dev/null; then
    artist=`playerctl --player=spotify metadata artist`
    title=`playerctl --player=spotify metadata title`
    #echo "|" $artist "-" $title
    echo "" $artist "-" $title
else
    echo ""
fi
