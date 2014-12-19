#!/bin/bash
# This script reconfigures Nginx to log traffic using the real client IP address specified in the X-Forwarded-For header added by the AWS ELB

# First verify Nginx is running on this server
if ps ax | grep nginx | grep -v grep | 2> /dev/null; then
	# Cleanup the Nginx dir
	if ! [ -d /etc/nginx/defaults ]; then
		sudo mkdir /etc/nginx/defaults
	fi
	sudo mv /etc/nginx/*.default /etc/nginx/defaults 2> /dev/null
	if [ -f /etc/nginx/conf.d/virtual.conf ]; then
		sudo rm /etc/nginx/conf.d/virtual.conf
	fi
fi

cp nginxdenylist.conf /etc/nginx/conf.d/nginxdenylist.conf

# First verify this has not already been done
if ! grep -q real_ip_header /etc/nginx/nginx.conf; then
	cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bak
	sed -i '/    default_type  application\/octet-stream;/r nginx-realip.conf' /etc/nginx/nginx.conf
else
	echo "Already done."
fi
sudo service nginx reload
