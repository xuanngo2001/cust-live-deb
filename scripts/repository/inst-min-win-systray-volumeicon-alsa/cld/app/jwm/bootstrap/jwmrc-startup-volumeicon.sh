# Set left click to display volume slider: lmb_slider=true
  VOLUME_ICON_CONFIG_DIR=${HOME}/.config/volumeicon/
  mkdir -p ${VOLUME_ICON_CONFIG_DIR}
  yes | cp ${CLD_APP_DIR}/volumeicon/config/volumeicon ${VOLUME_ICON_CONFIG_DIR}

# Wait for JWM
  timeout 5s /bin/bash -c "while ! pgrep Xorg; do sleep 1s; done; sleep 1s"

# Run volwheel on JWN startup.
  /usr/bin/volumeicon