#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@& 2>/dev/null
  fi
}

sh $HOME/.config/bin/pkill_bc
#killall swaybg
#killall waybar
#run waybar
#swaybg -i $(find $HOME/.config/background/. -type f | shuf -n 1) -m fill &

#run mako list

#swayidle -w timeout 3000 ~/.config/bin/wayland_session_lock   before-sleep 'swaylock -f -c 000000'
#run xfce4-power-manager
run dunst
run picom
run conky -c ~/.config/conky/conkyrc
run slstatus
#run swaybg -i $(find $HOME/.config/background/. -type f | shuf -n 1) -m fill &
#run nm-applet  # network-manager-applet
#run mpd
#run xfce4-power-manager --no-daemon
#run blueman-applet
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
run fcitx5 -d
run udiskie
#run thunar --daemon
xautolock -time 1 -locker slock
#killall swhks
#swhks
#pkexec swhkd  # -c $HOME/.config/swhkd/swhkdrc &
