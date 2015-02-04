nginx
=====

A collection of scripts for automating various tasks with Nginx

[![Build Status](https://travis-ci.org/swoodford/nginx.svg?branch=master)](https://travis-ci.org/swoodford/nginx)

- **nginx-denylist-generator.sh** Read from the list of CIDRs in the file blacklist and generate the Nginx deny conf
- **nginx-realip.conf** Config to be added to Nginx to get the real IP from an AWS ELB
- **nginx-realip.sh** Reconfigures Nginx to log traffic using the real client IP address specified in the X-Forwarded-For header added by an AWS ELB
- **nginxdenylist.conf** Nginx deny conf based on iptables/blacklist