ffmpeg -i "$1" -map 0:v? -c:v libx264 -vf scale="$3":-1 -b:v "$4" -map 0:a? -c:a copy -map 0:s? -c:s copy -max_muxing_queue_size 1024 "$2"
