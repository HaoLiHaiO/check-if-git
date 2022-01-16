#!/bin/bash

for d in */; do
    cd "$d"
    git status &>/dev/null

    if [ "$?" -ne 0 ]; then
        pwd
        echo "not a git repo"
    fi

    cd ..
done
