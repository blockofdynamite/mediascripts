# mediascripts
blockofdynamite's Media Scripts

These are a work in progress. No, they are not perfect, but they work really well.

**crop.sh - Crops a video file to remove black bars.**
```
./crop.sh inputfile outputfile input_from_cropdetect bitrate
  Example: ./crop.sh test_in.mkv test_out.mkv crop=1920:800:0:140 20M
  Example output: A cropped video file.
```

**cropdetect.sh - Detects crop parameters on a video file for which you want to remove black bars.**
```
./cropdetect.sh inputfile start_time
  Example: ./cropdetect.sh test_in.mkv 300
  Example output: crop=1920:800:0:140
```

**scale.sh - Scales a video file to another resolution while keeping the same aspect ratio.**
```
./scale.sh inputfile outputfile width bitrate
  Example: ./scale.sh test_in.mkv test_out.mkv 1280 4M
  Example output: A cropped video with width of 1280px and aspect ratio equivalent to that of input.
```

**tonemap.sh - Tonemaps a video file. Codec and bitrate are best used for 4K in this case.**

Note: Tone mapping requires a custom ffmpeg build. There is a build with the necessary components conveniently provided [here](https://www.johnvansickle.com/ffmpeg/).
```
./tonemap.sh inputfile outputfile bitrate
  Example: ./tonemap4k.sh test_in.mkv test_out.mkv 30M
  Example output: A tonemapped (removes HDR) file.
```

**tonemapcrop.sh - Crops and tonemaps a video file. Codec and bitrate are best used for 4K in this case.**

Note: Tone mapping requires a custom ffmpeg build. There is a build with the necessary components conveniently provided [here](https://www.johnvansickle.com/ffmpeg/).
```
./tonemapcrop.sh inputfile outputfile input_from_cropdetect bitrate
  Example: ./tonemap4k.sh test_in.mkv test_out.mkv crop=3840:1600:0:280 30M
  Example output: A cropped (removes black bars) and tonemapped (removes HDR) file.
```


**merge.sh - Merges two files. Video from first file, Audio and Subs from second file.**

```
./merge.sh inputfile1 inputfile2 outputfile
  Example: ./merge.sh videofilecropped.mp4 videofileoriginal.mkv videofilefinal.mkv
  Example output: A regular video file.
```
