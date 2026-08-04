#!/bin/bash

NUM1=10
NUM2=raghava

SUM=$(($NUM1+$NUM2))

echo "Total number: $SUM"

#arrays

MOVIES=("RRR" "Varanasi" "Pushpa") #indes always start from zero

echo "Movies are: ${MOVIES[@]}"
echo "First movie name is: ${MOVIES[0]}"
echo "Second movie name is: ${MOVIES[1]}"
echo "Third movie name is: ${MOVIES[2]}"
