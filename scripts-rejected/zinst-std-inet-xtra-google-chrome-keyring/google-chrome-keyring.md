# Reference
  https://www.google.com/linuxrepositories/

# Download public key
      
    wget https://dl.google.com/linux/linux_signing_key.pub
    wget -O - https://dl.google.com/linux/linux_signing_key.pub | gpg --no-default-keyring --keyring trustedkeys.gpg --import