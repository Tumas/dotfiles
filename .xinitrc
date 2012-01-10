# set wallpaper
eval `cat ~/.fehbg` 

# XMONAD
xsetroot -cursor-name left_prt
setxkbmap -layout us
#exec ck-launch-session xmonad
exec ck-launch-session bash -c "devmon & xmonad"

# GNOME-SHELL
#exec ck-launch-session gnome-session

