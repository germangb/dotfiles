#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#twm &
#xclock -geometry 50x50-1+1 &
#xterm -geometry 80x50+494+51 &
#xterm -geometry 80x20+494-0 &
#exec xterm -geometry 80x66+0+0 -name login

#terminal emulator daemon
#urxvtd -q -o -f &

# set desktop wallpaper
#feh --bg-fill ~/.wallpaper
feh --bg-tile ~/.wallpaper
wal -n -i ~/.wal

# set keyboard layout
setxkbmap es

# launch keystrokes
sxhkd &

#/home/germangb/Projects/Bar/bar.sh &

# launch compton
#compton &

# redshift
#pgrep redshift &> /dev/null || redshift &> /dev/null &
#redshift -o &> /dev/null &
redshift -O 3250 &> /dev/null &

# bsp window manager start
exec bspwm
#exec spectrwm
