#!/bin/bash

usage() {
        echo "./loadTest NumberOfRuns ExtraCommand"
        echo "Ex: ./loadTest 1000 sy2;q"
}

failure() {
        echo "The test failed at some point... Look at the error.log file"
}

if [ $# -ne 2 ]; then
        usage
        exit 1
fi

i=1
while [ $i -le $1 ]
do
        sys161 "kernel" "$2" > error.log
        egrep "panic" error.log
        if [ $? -eq 0 ]; then
                failure
                exit 1
        fi
        i=$[$i+1]
done

rm error.log
