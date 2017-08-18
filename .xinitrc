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

# apply keymap for x session
# xmodmap $HOME/.xinitrc.map

# set cycle to 1500 and never time out
# this allows screen dimming
xset s off

# set dpms suspend time to 2000 seconds
xset dpms 0 2000 0

# turn off bell noise
xset -b

# slock screen on dpms suspend or suspend

#xss-lock -n /usr/share/doc/xss-lock/dim-screen.sh -- slock &

xss-lock -- slock &

# return to the home directory
cd


echo ============= START $(date) ================ >> $HOME/.cache/awesome/stderr
echo ============= START $(date) ================ >> $HOME/.cache/awesome/stdout

# awesome >> $HOME/.cache/awesome/stdout 2>>$HOME/.cache/awesome/stderr
# i3 >> $HOME/.cache/i3/stdout 2>> $HOME/.cache/i3/stderr
exec xmonad

echo ============= STOP $(date) ================ >> $HOME/.cache/awesome/stderr
echo ============= STOP $(date) ================ >> $HOME/.cache/awesome/stdout
