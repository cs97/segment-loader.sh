#!/bin/bash

start=1
range=400

for ((i=start;i<=range;i++))
do
	cat tmp/part$i.mp4 >> video.mp4
done


