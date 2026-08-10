#/bin/bash

NUM1=10
NUM2=20

let=$(($NUM1+$NUM2))
echo "the sum is $sum"

###array###

Movies=("Varanasi" "Pushpa" "Akhanda")
echo "movie name is {$Movies[0]}"