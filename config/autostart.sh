#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

sh $HOME/.config/bin/pkill_bc & 2>/dev/null
#killall swaybg
#killall waybar
run waybar & 2>/dev/null
#swaybg -i $(find $HOME/.config/background/. -type f | shuf -n 1) -m fill &

#run mako list & 2>/dev/null

swayidle -w timeout 3000 ~/.config/bin/wayland_session_lock   before-sleep 'swaylock -f -c 000000'& 2>/dev/null
#run xfce4-power-manager & 2>/dev/null
run dunst & 2>/dev/null
#run swaybg -i $(find $HOME/.config/background/. -type f | shuf -n 1) -m fill &
#run nm-applet  # network-manager-applet
#run mpd
#run xfce4-power-manager --no-daemon
#run blueman-applet
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & 2>/dev/null
run fcitx5 -d
run udiskie & 2>/dev/null
#run thunar --daemon
killall swhks 2>/dev/null
swhks & 2>/dev/null
pkexec swhkd  2>/dev/null  # -c $HOME/.config/swhkd/swhkdrc &
