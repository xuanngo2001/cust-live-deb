
# Wait for JWM
timeout 5s /bin/bash -c "while ! pgrep Xorg; do sleep 1s; done; sleep 1s"

# Setup X Window on JWN startup to allow keyboard to move mouse"
#   Press Left Shift+NumLock."
#   Press on numpad keys to move the mouse."
setxkbmap -option keypad:pointerkeys