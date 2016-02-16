#!/bin/bash
echo -n "Deployment.."
curl -X POST -H "Accept: application/vnd.com.sensiolabs.insight+xml" "https://368761df-60fe-41ae-ae48-5788ac6c060e:2dcfb791ae2186c57b2cabdc5dd6c383dfd2dfd3a736a539ac8e2502495dc738@insight.sensiolabs.com/api/projects/4f1e5660-82c3-4db5-950d-d30cf76d876c/analyses"
#until $(curl --output /dev/null --silent --head --fail -X POST -H "Accept: application/vnd.com.sensiolabs.insight+xml" "https://368761df-60fe-41ae-ae48-5788ac6c060e:2dcfb791ae2186c57b2cabdc5dd6c383dfd2dfd3a736a539ac8e2502495dc738@insight.sensiolabs.com/api/projects/4f1e5660-82c3-4db5-950d-d30cf76d876c/analyses" > test.txt); do
#  printf '.'
#  sleep 3
#  
#  if [ $(grep -c '<failed>false</failed>' test.txt) -ne 0 ]
#  then
#    echo " successful !"
#    exit 0
#  elif [ $(grep -c '<failed>true</failed>' test.txt) -ne 0 ]
#  then
#    echo " failed !"
#    exit 1
#  fi
#done
#deployment=$(curl -X POST -H "Accept: application/vnd.com.sensiolabs.insight+xml" "https://368761df-60fe-41ae-ae48-5788ac6c060e:2dcfb791ae2186c57b2cabdc5dd6c383dfd2dfd3a736a539ac8e2502495dc738@insight.sensiolabs.com/api/projects/4f1e5660-82c3-4db5-950d-d30cf76d876c/analyses")

#check=0
#
#while [ $check = 0 ];do
#
#echo -n "."
#sleep 2
#
#if [ $(echo $deployment | grep -c '<failed>false</failed>') -ne 0 ]
#then
#	echo " successful !"
#	exit 0
#elif [ $(echo $deployment | grep -c '<failed>true</failed>') -ne 0 ]
#then
#	echo " failed !"
#	exit 1
#fi
#
#done
