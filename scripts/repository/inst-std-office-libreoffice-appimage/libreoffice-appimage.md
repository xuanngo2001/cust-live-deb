#libreoffice
./LibreOffice-fresh.basic-x86_64.AppImage --calc
./LibreOffice-fresh.basic-x86_64.AppImage --version

## Download
1. Latest version of AppImage: https://www.libreoffice.org/download/download/?type=deb-x86_64
1. https://www.libreoffice.org/download/appimage/


ln -sf ../AppImages/LibreOffice-<versionstring>-x86_64.AppImage libreoffice

## Update icons
		yes | cp /usr/share/icons/hicolor/32x32/apps/libreoffice-*.png config/icon/