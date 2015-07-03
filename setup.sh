if [ "$#" -ne 1 ]
then
  echo "Usage: setup.sh <archive_path>"
  exit 1
fi

# append path to top of crontab
crontab -l | { cat; echo "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$HOME/bin"; } | crontab -

# cronjob to take a selfie every 60 seconds
crontab -l | { cat; echo "* * * * * selfie.sh $1 >> $1/selfie.log 2>&1"; } | crontab -

# cronjob to turn selfies into a gif
crontab -l | { cat; echo "59 23 * * * selfie-to-gif.sh $1 >> $1/selfie-to-gif.log 2>&1"; } | crontab -
