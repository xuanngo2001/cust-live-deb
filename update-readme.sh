#!/bin/bash

README=README.md
cp ${README} ${README}.bck

PLACEHOLDER="# What are in ISO"
sed "/${PLACEHOLDER}/,/ISO/d" ${README}.bck > ${README}

echo ${PLACEHOLDER} >> ${README}
grep "CLDS:" chroot/root/scripts/install.log.ran | \
   sed 's/^CLDS://' | \
   sed 's/^>/## /' >> ${README}
   
rm -f ${README}.bck

echo "${README} updated."