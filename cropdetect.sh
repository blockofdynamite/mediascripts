ffmpeg -ss "$2" -i "$1" -t 5 -vf cropdetect -f null -max_muxing_queue_size 1024 - 2>&1 | awk '/crop/ { print $NF }' | tail -1
