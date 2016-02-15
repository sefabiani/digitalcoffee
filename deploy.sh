#!/bin/bash

echo -n "Deployment.."

deployment=$(curl -X POST -H "Accept: application/vnd.com.sensiolabs.insight+xml" "https://368761df-60fe-41ae-ae48-5788ac6c060e:2dcfb791ae2186c57b2cabdc5dd6c383dfd2dfd3a736a539ac8e2502495dc738@insight.sensiolabs.com/api/projects/4f1e5660-82c3-4db5-950d-d30cf76d876c/analyses")

check=0

while [ $check = 0 ];do

if $(echo $deployment | grep -q '<failed>false</failed>') 
then
	echo " successful !"
	exit 0
elif $(echo $deployment | grep -q '<failed>true</failed>')
then
	echo " failed !"
	exit 1
fi

done
