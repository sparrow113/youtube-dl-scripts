#!/bin/bash
i=0
while IFS='' read -r line || [[ -n "$line" ]]; do
    youtube-dl --proxy socks5://10.8.0.1:1080/ -f mp4 "$line"
    let i++
    mv *.mp4 finished/.
done < "$1"
