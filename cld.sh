#!/bin/bash
set -e
ACTION=$(echo $1 | tr '[:upper:]' '[:lower:]')
case "${ACTION}" in
  
  build)
        # Update manuals.
        ./update-manual.sh

        SYSTEM=$1
        # All below is a one-liner.
        ./build-live.sh && \
          chroot chroot/ /bin/bash -c "cd /root/scripts; \
                                       chmod +x scripts-ls.sh; \
                                       ./scripts-ls.sh ${SYSTEM}; \
                                       chmod +x install.sh; \
                                       ./install.sh" && \
        ./mkiso.sh ${SYSTEM}

        # Reference:
        # chroot usage: http://stackoverflow.com/a/8157973
    
    ;;

  right)
 
    ;;

  *)
    echo "ERROR: Please provide ACTION(i.e. left, right, top or bottom)"
    echo "   e.g. $0 right"
    exit 1
    ;;
esac
