#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

polybar top | tee -a /tmp/polybar_top.log & disown
