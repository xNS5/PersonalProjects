# !/bin/bash

for arg in $@
do
   if [[ $arg == *.java ]]
      then
         javac $arg
         sleep 1s
         java ${arg%.*}
   else
      echo "JCompile [ERROR]: File is not a .java File"
   fi
done
