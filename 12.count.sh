#/bin/bash

NUM1=10
NUM2=20

sum=$(($NUM1+$NUM2))
echo "the sum is $sum"

###array###

Movies=("Varanasi" "Pushpa" "Akhanda")
echo "movie name is ${Movies[@]}"
echo "script name is $0"
echo "second movie name is ${Movies[1]}"