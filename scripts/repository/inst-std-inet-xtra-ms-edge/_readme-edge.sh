# Get latest *.deb from https://www.microsoft.com/edge/download
	update-alternatives: using /usr/bin/microsoft-edge-stable to provide /usr/bin/microsoft-edge (microsoft-edge) in auto mode

# Run
	microsoft-edge --no-sandbox

# Get logo
	dpkg-deb -R microsoft-edge-stable_112.0.1722.48-1_amd64.deb tmp
	cd tmp
	find | grep -E 'png|xpm|svg'
	
		./opt/microsoft/msedge/product_logo_64.png
		./opt/microsoft/msedge/product_logo_32.png
		./opt/microsoft/msedge/product_logo_128.png
		./opt/microsoft/msedge/product_logo_24.png
		./opt/microsoft/msedge/product_logo_16.png
		./opt/microsoft/msedge/product_logo_32.xpm
		./opt/microsoft/msedge/product_logo_256.png
		./opt/microsoft/msedge/product_logo_48.png
