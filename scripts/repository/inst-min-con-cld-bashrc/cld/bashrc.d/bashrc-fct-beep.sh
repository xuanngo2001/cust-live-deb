# From ../cld-bashrc/

# Description: Beep using ALSA tool.
#	Ref: https://unix.stackexchange.com/a/163716
# 		Beep can only work if your PC has a traditional old style "speaker", and probably most if not all laptops and small devices don't have one.

function beep()
{ 
	speaker-test -t sine -f 1000 -l 1 & sleep .1 && kill -9 $!
}  
export -f beep

