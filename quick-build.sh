./master-release.sh tmp && ./mirrors-update.sh && ./master-update.sh && ./aptly-update-cld.sh && cd ../cust-live-deb/ && ./build-cld.sh work

./build-cld.sh home; ./build-cld.sh home_inspiron; mv cust-live-deb-64-*_????-??-??_*.iso /media/sf_shared/; ./build-cld.sh work_no_proxy
