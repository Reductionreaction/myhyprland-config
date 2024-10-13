time=$(date "+%Y-%m-%d-%H-%M-%S")
hyprctl -j activatewindow | jq -r '"\(.at[0]),\(.at[1]) \(.size[0])x\(.size[1])"' | grim -g - ~/Screenshot/$time-screenshot.png
