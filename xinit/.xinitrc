#xkb
setxkbmap -layout us,th -option grp:win_space_toggle,caps:escape &
#Touchpad:
    for id in $(xinput list --id-only | grep -E '^[0-9]+$'); do
        if xinput list-props "$id" 2>/dev/null | grep -q "libinput Tapping Enabled"; then
            xinput set-prop "$id" "libinput Tapping Enabled" 1
            xinput set-prop "$id" "libinput Natural Scrolling Enabled" 1
        fi
    done &

dbus-update-activation-environment --systemd DISPLAY XAUTHORITY
exec oxwm
