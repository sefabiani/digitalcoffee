#!/bin/bash
echo -n "Deployment.."

curl -v --silent -X POST -H "Accept: application/vnd.com.sensiolabs.insight+xml" "https://368761df-60fe-41ae-ae48-5788ac6c060e:2dcfb791ae2186c57b2cabdc5dd6c383dfd2dfd3a736a539ac8e2502495dc738@insight.sensiolabs.com/api/projects/4f1e5660-82c3-4db5-950d-d30cf76d876c/analyses") 2>&1 | grep "<failed>false</failed>"


