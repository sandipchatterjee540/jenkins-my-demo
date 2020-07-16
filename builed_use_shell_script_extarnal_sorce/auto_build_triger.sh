#! /bin/bash


echo "jenkins username:"
read user
echo "jenkins password:"
read password
echo "Enter IP or domain name:"
read ip
echo "Enetr port name:"
read port
echo "Enter your job name:"
read job
echo "Your job have any paramiter if yes press 1:"
read para


crumb=$(curl -u "$user:$password" -s 'http://$ip:$port/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')
#pass with paramiter
if [ "$para" = 1 ]; then
	echo "yes para in there"
else
	curl -u "$user:$password" -H "$crumb" -X POST http://$ip:$port/job/$job/build?delay=0sec
	
fi
