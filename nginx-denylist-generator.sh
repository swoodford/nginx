#!/bin/bash
# This script will read from the list of CIDRs in the file blacklist and generate the Nginx deny conf

# Optionally: Make a backup of any existing nginxdenylist.conf
# Set date as variable
# DATE=$(date '+%Y%m%d')

# if [ -f nginxdenylist.conf ]; then
# 	mv nginxdenylist.conf nginxdenylist-$DATE.conf
# fi

# if [ -f ../nginx/nginxdenylist.conf ]; then
# 	mv ../nginx/nginxdenylist.conf ../nginx/nginxdenylist-$DATE.conf
# fi

while read blacklist
do
	echo "deny "$blacklist";" >> ../nginx/nginxdenylist2.conf
done < blacklist
mv ../nginx/nginxdenylist2.conf ../nginx/nginxdenylist.conf
echo "Nginx denylist conf generated."