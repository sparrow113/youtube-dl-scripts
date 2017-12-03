Create a file, links.txt, in your youtube directory and list all the links of the videos you'd like to download. Also, create a new folder in your youtube directory, name it "finished".

Then, simply run ./dl.sh links.txt and let the download complete.

BUG REPORT: Should the script not stop after the final video (and just re-start the downloads from the first video), just press CTRL+C a few times so the script is stopped. 

SOLVED: This happens if you paste the links
of all youtube videos from a playlist. What will happen is youtube-dl will download the entire playlist
for each link. So if you have a youtube video link that is part of a playlist, all you need to do is copy
and paste ONE link from the playlist to download the entire playlist.

BUG REPORT #2: If the downloaded .mp4s are not named 1.mp4, 2.mp4, ... , etc. after running dl.sh, then run ./rename.sh.
NOTE: No work-around yet.

BUG REPORT #3: If the downloaded .mp4s are not automatically moved into the finished folder after running dl.sh, do so manually. Also, if the filenames have not changed to 1.mp4, 2.mp4, ... , etc. then run ./rename.sh when all the .mp4s are in the finished folder. If you don't do this, convert.sh won't work.

Then, move convert.sh into your finished folder and execute. All files should then be converted into .mp3s and named 1.mp4.mp3, 2.mp4.mp3, ... , etc.

Re-name the files manually if you would like them to be named after their song name, but this is not really necessary.

UPDATE: It seems that if you just want a full playlist, click on one
video in the youtube playlist and copy its link. Paste that link
in links.txt and run ./dl.sh links.txt
and that will download ALL videos in the youtube playlist. Once done,
the .mp4s will be moved into /finished, then you can run rename.sh
in the finished folder, then run convert.sh if you want to convert them all
to .mp3s.
