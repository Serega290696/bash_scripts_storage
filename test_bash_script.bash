#!/bin/bash
echo "Run test.'"

gcc valid.c ft_putstr.c
errorExists=0
OUTPUT="$(./a.out b1 | awk END{print})"
if [ "${OUTPUT}" = "0" ]; then   errorExists=1; echo "ERROR! test#1"; fi
OUTPUT="$(./a.out b2 | awk END{print})"
if [ "${OUTPUT}" = "0" ]; then   errorExists=1; echo "ERROR! test#2"; fi
OUTPUT="$(./a.out b3 | awk END{print})"
if [ "${OUTPUT}" = "0" ]; then   errorExists=1; echo "ERROR! test#3"; fi
OUTPUT="$(./a.out b4 | awk END{print})"
if [ "${OUTPUT}" = "0" ]; then   errorExists=1; echo "ERROR! test#4"; fi


OUTPUT="$(./a.out nb1 | awk END{print})"
if [ "${OUTPUT}" = "1" ]; then   errorExists=1; echo "ERROR! test#5"; fi
OUTPUT="$(./a.out nb2 | awk END{print})"
if [ "${OUTPUT}" = "1" ]; then   errorExists=1; echo "ERROR! test#6"; fi
OUTPUT="$(./a.out nb3 | awk END{print})"
if [ "${OUTPUT}" = "1" ]; then   errorExists=1; echo "ERROR! test#7"; fi
OUTPUT="$(./a.out nb4 | awk END{print})"
if [ "${OUTPUT}" = "1" ]; then   errorExists=1; echo "ERROR! test#8"; fi

if [ "${errorExists}" = 0 ]; then
	echo "You pass all tests!";
fi

