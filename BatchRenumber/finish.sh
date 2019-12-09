#!/usr/bin/bash

javac Renumber.java
Sleep 2s
echo ""

# Building the Jar file
jar -cvfm Renumber.jar MANIFEST.mf ./*.class
echo ""
echo "Compiled Renumber.jar"

sleep 2s

if [ ! \( -d br_config \) ];
  then
    mkdir br_config && cd br_config || return
    touch filter.txt init.txt && cd ..
fi

echo "Created the Jar and config files"
