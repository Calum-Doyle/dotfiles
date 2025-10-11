#!/bin/sh
## Put monitors in order
wlr-randr --output eDP-1 --off
wlr-randr --output DP-4 --right-of VGA-1
wlr-randr --output DP-5 --transform 90 --right-of DP-4

## set wallpapers
swaybg -o VGA-1 -i ~/.themes/wallpapers/bullet_a.jpg --mode fill -o DP-4 -i ~/.themes/wallpapers/bullet_b.jpg --mode fill -o DP-5 -i ~/.themes/wallpapers/bullet_c.jpg --mode fill
