#!/bin/bash

#date
date >> ISP_CPUTemp.ods

#getting networkspeed in format
/home/dwalk/speedtest-cli-extras/bin/speedtest-csv --no-share >> /home/dwalk/Logs/speedtest.log
/home/dwalk/speedtest-cli-extras/bin/speedtest-csv --no-share >> /home/dwalk/Logs/ISP_Log.ods

#CPU temp
sudo /opt/vc/bin/vcgencmd measure_temp >> ISP_CPUTemp.ods

