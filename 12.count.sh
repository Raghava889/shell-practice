#!/bin/bash



START_TIME=$(date +%s)

sleep 10

END_TIME=$(date +%s)

TOTAL_TIME=$(($END_TIME-$START_TIME))

echo "This is the Total time $TOTAL_TIME second"