#!/bin/bash
# Quickly list unique referrer URLs from Nginx access log

cat /var/log/nginx/access.log | cut -d '"' -f 4 | sort | uniq