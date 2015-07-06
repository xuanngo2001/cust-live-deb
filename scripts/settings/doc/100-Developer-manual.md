---
title: Developer manual
---

# Build Cust-Live-Deb from scratch

1. Clone the git repository(e.g. `git clone https://github.com/limelime/cust-live-deb.git`)
1. Change `DEB_REPO_URL` in `build-live.sh` to the Debian repository URL.
1. `./run.sh <system>`. **system** can be:
    * min: Strict minimum system with JWM light-weight window manager. From there, you can add your desired applications.
    * std: Standard system includes minimum system + common applications.
1. `cust-live-deb-64-<system>_YYYY-MM-DD_HH.MM.SS.iso` will be created.