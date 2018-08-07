inst-std-graphic-00-pinta-fix.sh
  Download key so no need to download.
  
cust-live-deb/install-log:
  compare mpv.log & mpv-no.log to find out which library is used to output image in jpeg.
  
	    mpv videofile.avi --no-audio --vo=image --start=2% --frames=1  -o output.jpg
			  Image formats incompatible or invalid.
			Video filter chain:
			  [in] 1888x804 yuv420p bt.709/bt.709/bt.1886/limited CL=mpeg2/4/h264
			  [out] ???   <---
			Cannot initialize video filters.
			Could not initialize video chain.
    Solution: liblept5 (no)
