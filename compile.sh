#!/bin/bash

usage() {
        echo "./compile AssignmentFolder gitUser gitPass"
        echo "Example: ./compile ASST2 user pass"
}

echo "Make sure this is called from root"

if [ $# -ne 3 ]; then
        usage
        exit 1
fi

cd "../os161-1.99/kern/compile/$1"



bmake depend
bmake
bmake install

cd "../../../../root"
