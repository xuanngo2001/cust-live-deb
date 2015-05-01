#!/bin/sh

lb config noauto \
    --clean \
    --architectures amd64 \
    --linux-flavours amd64 \
    --compression bzip2 \
    --distribution jessie \
    --language en \
    --parent-mirror-bootstrap http://debian.ustc.edu.cn/debian/ \
    --parent-mirror-chroot-security http://debian.ustc.edu.cn/debian-security/ \
    --parent-mirror-binary http://debian.ustc.edu.cn/debian/ \
    --parent-mirror-binary-security http://debian.ustc.edu.cn/debian-security/ \
    --mirror-bootstrap http://debian.ustc.edu.cn/debian/ \
    --mirror-chroot-security http://debian.ustc.edu.cn/debian-security/ \
    --mirror-binary http://debian.ustc.edu.cn/debian/ \
    --mirror-binary-security http://debian.ustc.edu.cn/debian-security/ \
    --archive-areas "main non-free contrib" \
    "${@}"
  