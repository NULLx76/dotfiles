#!/bin/bash
sudo zgrep -h 'Ban' /var/log/fail2ban.log* | awk '{print $8 }' | sort | uniq -c | sort -n
