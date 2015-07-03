# converts a selfie to a gif
convert -delay 15 -loop 0 $1/$(date +%y%m%d)/*.png $1/$(date +%y%m%d)/$(date +%y%m%d).gif
