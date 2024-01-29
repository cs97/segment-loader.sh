#!/bin/bash

start=1
range=400

address=""

if [ -d ./tmp ]; then
  mkdir tmp
fi

for ((i=start;i<=range;i++))
do
	s=$(echo $address | sed s/"seg-1"/"seg-"$i/g)
	echo "download $i of $range"
	wget -qO - ""$s"" > tmp/part$i.mp4
done

