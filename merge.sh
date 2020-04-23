ffmpeg -i "$1" -i "$2" -map 0:v? -map 1:a? -map 1:s? -c copy -max_interleave_delta 0 "$3"
