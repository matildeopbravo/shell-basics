#!/bin/bash
# bin/refresh_firefox.sh

CURRENT_WID=$(xdotool getwindowfocus)

WID=$(xdotool search --name "shell basics")
xdotool windowactivate "$WID"
xdotool key F5

xdotool windowactivate "$CURRENT_WID"
