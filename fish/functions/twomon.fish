function twomon
  xrandr --output eDP-1 --mode 1920x1200 --rate 60.00 --left-of DP-1
  xrandr --output DP-1 --mode 1920x1080 --rate 144.00 --primary
  bspc monitor DP-1 -d 1 2 3 4 5
  bspc monitor eDP-1 -d 6 7 8 9 10
end
