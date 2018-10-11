libreoffice_gz=$(\ls *ibre*ffice*.gz | sort -r | head -n1)
tar -xzf "${libreoffice_gz}"
(
	cd *_deb/DEBS
	dpkg -i *.deb
)
rm -rf *_deb/
