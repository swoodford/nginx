#!/bin/bash
# This script will add CIDR notation to any IPs missing /32 /24 or /14 CIDR notation

# cat blacklist | egrep '/32$'

# while read blacklist
# do
# 	if ! [[ echo "$blacklist" | egrep -qv '/32$' ]]; then
# 		if ! [[ echo "$blacklist" | egrep -qv '/24$' ]]; then
# 			if ! [[ echo "$blacklist" | egrep -qv '/14$' ]]; then
# 				echo "$blacklist/32" >> blacklist3
# 			fi
# 		fi
# 	fi
# done < blacklist

while read blacklist
do
	if ! egrep -qv '/32$' $blacklist; then
		if ! egrep -qv '/24$' $blacklist; then
			if ! egrep -qv '/14$' $blacklist; then
				echo "$blacklist/32" >> blacklist3
			fi
		fi
	fi
done < blacklist