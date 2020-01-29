## Confirming "buster" is supported...

+ curl -sLf -o /dev/null 'https://deb.nodesource.com/node_12.x/dists/buster/Release'

## Adding the NodeSource signing key to your keyring...

+ curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
Warning: apt-key output should not be parsed (stdout is not a terminal)
OK

## Creating apt sources list file for the NodeSource Node.js 12.x repo...

+ echo 'deb https://deb.nodesource.com/node_12.x buster main' > /etc/apt/sources.list.d/nodesource.list
+ echo 'deb-src https://deb.nodesource.com/node_12.x buster main' >> /etc/apt/sources.list.d/nodesource.list

## Running `apt-get update` for you...

+ apt-get update
Hit:1 http://localhost/aptly-repo/master_buster-main buster InRelease
Hit:2 http://localhost/aptly-repo/master_aptly-main squeeze InRelease
Hit:3 http://localhost/aptly-repo/master_buster-backports-contrib buster-backports InRelease
Hit:4 http://localhost/aptly-repo/master_buster-backports-main buster-backports InRelease
Hit:5 http://localhost/aptly-repo/master_buster-backports-non-free buster-backports InRelease
Hit:6 http://localhost/aptly-repo/master_buster-contrib buster InRelease
Hit:7 http://localhost/aptly-repo/master_buster-non-free buster InRelease
Hit:8 http://localhost/aptly-repo/master_buster-updates-contrib buster-updates InRelease
Hit:9 http://localhost/aptly-repo/master_buster-updates-main buster-updates InRelease
Hit:10 http://localhost/aptly-repo/master_buster-updates-non-free buster-updates InRelease
Hit:11 http://localhost/aptly-repo/master_deb-multimedia-main buster InRelease
Hit:12 http://localhost/aptly-repo/master_deb-multimedia-non-free buster InRelease
Hit:13 http://localhost/aptly-repo/master_docker-stable buster InRelease
Hit:14 http://localhost/aptly-repo/master_google-main stable InRelease
Hit:15 http://localhost/aptly-repo/master_mariadb-main buster InRelease
Hit:16 http://localhost/aptly-repo/master_mono-main stable-buster InRelease
Hit:17 http://localhost/aptly-repo/master_qgis-main buster InRelease
Hit:18 http://localhost/aptly-repo/master_virtualbox-contrib buster InRelease
Ign:19 http://dl.google.com/linux/chrome/deb stable InRelease
Get:20 https://deb.nodesource.com/node_12.x buster InRelease [4,584 B]
Hit:21 http://dl.google.com/linux/chrome/deb stable Release
Get:22 https://deb.nodesource.com/node_12.x buster/main amd64 Packages [764 B]
Fetched 5,348 B in 2s (3,333 B/s)
Reading package lists...

## Run `sudo apt-get install -y nodejs` to install Node.js 12.x and npm
## You may also need development tools to build native addons:
     sudo apt-get install gcc g++ make
## To install the Yarn package manager, run:
     curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
     echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
     sudo apt-get update && sudo apt-get install yarn
