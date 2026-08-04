#!/bin/bash

NUM1=10
NUM2=raghava

SUM=$(($NUM1+$NUM2))

echo "Total number: $SUM"

#arrays

MOVIES=("RRR","Varanasi","Pushpa") #indes always start from zero

echo "Movies are: ${MOVIES[@]}"