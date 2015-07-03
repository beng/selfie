function selfie() {
    filepath="$1/$(date +%y%m%d%H%M%S).png"
    imagesnap $filepath -w 1.0 # the -w flag gives the camera time to warmup
    impbcopy $filepath
}

# create folder with todays date
if [ ! -d "$1/$(date +%y%m%d)" ] ; then
    echo "Creating directory: $1/$(date +%y%m%d)"
    mkdir -p "$1/$(date +%y%m%d)"
fi

# take selfie
selfie $1

# move selfie to today's folder
mv $filepath $1/$(date +%y%m%d)
