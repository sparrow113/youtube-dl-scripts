for i in *.mp4 ; do 
    ffmpeg -i "$i" -acodec libmp3lame $(basename "${i/.flac}").mp3 
    sleep 1
done
