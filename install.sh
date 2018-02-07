#!/bin/bash

# copy killing script and pidof command to /usr/bin
sudo cp ./killGOING11.sh /usr/bin/killGOING11.sh
sudo cp ./pidof /usr/bin/pidof

# modified to executable
sudo chmod +x /usr/bin/killGOING11.sh

# regist to crontab and check each hour
(crontab -l ; echo "10 * * * * /usr/bin/killGOING11.sh") | crontab

# show registration
crontab -l
