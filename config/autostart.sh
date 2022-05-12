#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#killall swaybg
#run swaybg -i $(find $HOME/.config/background/. -type f | shuf -n 1) -m fill &
#killall waybar
run waybar &
killall swhks
swhks &
pkexec swhkd # -c $HOME/.config/swhkd/swhkdrc &
sh $HOME/.config/bin/pkill_bc &
run mako
swayidle -w timeout 300 ~/.config/bin/wayland_session_lock &

#run swaybg -i $(find $HOME/.config/background/. -type f | shuf -n 1) -m fill &
#run nm-applet  # network-manager-applet
#run mpd
#run xfce4-power-manager --no-daemon
#run blueman-applet
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#run fcitx5 -d
#run thunar --daemon &
