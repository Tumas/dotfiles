# set wallpaper
eval `cat ~/.fehbg` 

# run devmon
devmon &

# XMONAD
xsetroot -cursor-name left_prt
setxkbmap -layout us
exec ck-launch-session xmonad

# GNOME-SHELL
#exec ck-launch-session gnome-session
