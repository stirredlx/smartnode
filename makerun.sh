#!/bin/bash
# makerun.sh
# Make sure smartcashd is always running.
# Add the following to the crontab (i.e. crontab -e)
# */5 * * * * ~/smartnode/makerun.sh

if ps -A | grep smartcashd > /dev/null
then
  exit
else
  smartcashd &
fi
