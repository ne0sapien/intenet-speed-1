#!/bin/bash

#date
date >> ISP_CPUTemp.txt
#ODS is a rich text format file, so you'l want to stick to plain text

#getting networkspeed in format
/home/dwalk/speedtest-cli-extras/bin/speedtest-csv --no-share >> /home/dwalk/Logs/speedtest.log
/home/dwalk/speedtest-cli-extras/bin/speedtest-csv --no-share >> /home/dwalk/Logs/ISP_Log.ods


#The right way to use STDOUT IN Crontab (not in a .sh file within)
/home/dwalk/speedtest-cli-extras/bin/speedtest-csv --no-share >> /home/dwalk/Logs/speedtest.log 2>&1


# Expected results
Server ID,Sponsor,Server Name,Timestamp,Distance,Ping,Download,Upload,Share,IP Address
24500,"Star Communications, Inc.","Clinton, NC",2020-12-31T17:24:53.566574Z,61.959562539294865,36.78,164032577.60907128,12906560.070495833,,75.184.19.46


#CPU temp
sudo /opt/vc/bin/vcgencmd measure_temp >> ISP_CPUTemp.txt

