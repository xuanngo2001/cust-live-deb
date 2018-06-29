    # List available formats (supported pixel formats, video formats, and frame sizes) for a particular input device:
    $ ffmpeg -f v4l2 -list_formats all -i /dev/video0
    …
    [video4linux2,v4l2 @ 0xf07d80] Raw       :   yuyv422 :     YUV 4:2:2 (YUYV) : 640x480 160x120 ... 640x360
    [video4linux2,v4l2 @ 0xf07d80] Compressed:     mjpeg :                MJPEG : 640x480 160x120 ... 352x288
    
    # To encode video from /dev/video0:
    ffmpeg -f v4l2 -framerate 25 -video_size 640x480 -i /dev/video0 output.mkv

