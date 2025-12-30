#!/bin/bash
NUMBER1=$1
NUMBER2=$2

SUM = $(($NUMBER1 + $NUMBER2))

echo "Total :: $SUM"

a=10
b=20
c=$((a + b))
echo $c