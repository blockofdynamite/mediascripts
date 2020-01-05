ffmpeg -i "$1" -map 0:v? -c:v libx264 -vf scale=1920:-1 -b:v 20M -map 0:a? -c:a copy -map 0:s? -c:s copy -max_muxing_queue_size 1024 "$2"
