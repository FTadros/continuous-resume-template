#!/bin/bash

read -p "Enter your name (no spaces): " name
sed -i "s/__name__/$name/g" ${PWD}/src/*
# also rename all files with __name__ in the name

for file in ${PWD}/src/*__name__*; do
    mv "$file" "${file/__name__/$name}"
done
