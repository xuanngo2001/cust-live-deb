./master-release.sh tmp && ./mirrors-update.sh && ./master-update.sh && ./aptly-update-cld.sh && cd ../cust-live-deb/ && ./build-cld.sh work
mv cust-live-deb-64-*_????-??-??_*.iso /media/sf_shared/
