#!/bin/bash

TIME_STAMP=$(date +%s)

echo "Today is $TIME_STAMP"

START_TIME=$(date +%s)

sleep 10

END_TIME=$(date +%s)

TOTAL_TIME=(($END_TIME-$START_TIME))

echo "This is the Total time $TOTAL_TIME second"