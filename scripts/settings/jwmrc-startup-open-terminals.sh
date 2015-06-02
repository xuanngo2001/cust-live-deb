

# Open 2 terminals on JWM startup.
nohup x-terminal-emulator -e /root/open-terminals.sh 2>&1 | tee -a /dev/shm/startup.log &

