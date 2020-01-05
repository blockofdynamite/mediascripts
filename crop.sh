ffmpeg -i "$1" -c:v libx264 -map 0:v? -vf "$3" -b:v "$4" -map 0:a? -c:a copy -map 0:s? -c:s copy "$2"
