#!/bin/bash
# This script will add CIDR notation to any IPs missing /32 /24 or /14 CIDR notation

# LIST=$(cat blacklist | nl)
# TOTAL=$(cat blacklist | wc -l)


# START=1
# for (( COUNT=$START; COUNT<=$TOTAL; COUNT++ ))
# do
# 	IP=$(echo "$LIST" | grep -w [^0-9][[:space:]]$COUNT | cut -f 2))
# 	if egrep -qv '/32$' $IP; then
# 		if egrep -qv '/24$' $IP; then
# 			if egrep -qv '/14$' $IP; then




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

# while read blacklist
# do
# 	if ! egrep -qv '/32$' $blacklist; then
# 		if ! egrep -qv '/24$' $blacklist; then
# 			if ! egrep -qv '/14$' $blacklist; then
# 				echo "$blacklist/32" >> blacklist3
# 			fi
# 		fi
# 	fi
# done < blacklist