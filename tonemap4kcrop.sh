ffmpeg -i "$1" -c:v libx265 -map 0:v? -vf $3,zscale=t=linear:npl=100,format=gbrpf32le,zscale=p=bt709,tonemap=tonemap=hable:desat=1,zscale=t=bt709:m=bt709:r=tv,format=yuv420p -b:v $4 -map 0:a? -c:a copy -map 0:s? -c:s copy -max_muxing_queue_size 1024 "$2"