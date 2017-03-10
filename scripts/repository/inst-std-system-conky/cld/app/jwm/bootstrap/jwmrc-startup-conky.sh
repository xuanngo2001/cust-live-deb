ln -s /usr/local/cld/app/conky/config/conkyrc ${HOME}/.conkyrc

# Wait for JWM
timeout 5s /bin/bash -c "while ! pgrep Xorg; do sleep 1s; done; sleep 1s"

# Dynamically configure conkyrc before running conky.
/usr/local/cld/app/conky/bin/jwmrc-startup-configure-conky.sh

# Run system monitor conky on JWM startup.
/usr/bin/conky

