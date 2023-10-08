xrandr --newmode "1368x768_60.00"   85.25  1368 1440 1576 1784  768 771 781 798 -hsync +vsync
xrandr --addmode DP1 1368x768_60.00
xrandr --output DP1 --mode 1368x768_60.00

#xrandr --output DP1 --primary --mode 1024x768 --output eDP1 --mode 1366x768 --left-of DP1

xrandr --output DP1 --primary --mode 1366x768 --output eDP1 --mode 1366x768 --left-of DP1
