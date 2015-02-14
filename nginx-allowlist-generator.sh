#!/bin/bash
# This script will read from the list of IPs (non CIDR notation) in the file allowlist and generate the Nginx allow conf

# Optionally: Make a backup of any existing nginxallowlist.conf
# Set date as variable
# DATE=$(date '+%Y%m%d')

# if [ -f nginxallowlist.conf ]; then
# 	mv nginxallowlist.conf nginxallowlist-$DATE.conf
# fi

# if [ -f ../nginx/nginxallowlist.conf ]; then
# 	mv ../nginx/nginxallowlist.conf ../nginx/nginxallowlist-$DATE.conf
# fi

# cd ../iptables
while read allowlist
do
	echo "            allow "$allowlist"/32;" >> nginxallowlist2.conf
done < allowlist
mv nginxallowlist2.conf nginxallowlist.conf
echo "Nginx allowlist conf generated."
