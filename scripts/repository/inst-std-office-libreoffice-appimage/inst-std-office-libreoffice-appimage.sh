#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Ensure *.AppImage is executable.
	chmod +x ./cld/app/libreoffice-appimage/bin/LibreOffice*.AppImage
	
# Add to CLD/
	yes | cp -av ./cld  /usr/local

# Rename LibreOffice*.AppImage to libreoffice
	libreoffice_appimage_dir="${CLD_APP_DIR}"/libreoffice-appimage
	ln -sf "${libreoffice_appimage_dir}"/bin/LibreOffice*.AppImage "${libreoffice_appimage_dir}"/bin/libreoffice
	
# Insert LibreOffice menu in Office
	jwmrc_menus_office_libreoffice_xml=jwmrc-menus-office-libreoffice.xml
	libreoffice_bin_path="${libreoffice_appimage_dir}"/bin/libreoffice
	sed -i "s|/usr/bin/libreoffice.* --|${libreoffice_bin_path} --|" "${jwmrc_menus_office_libreoffice_xml}"			# Update bin paths.

	libreoffice_bin_filename="${libreoffice_appimage_dir}"/icon
	sed -i "s|/usr/share/icons/hicolor/32x32/apps|${libreoffice_bin_filename}|" "${jwmrc_menus_office_libreoffice_xml}"	# Update icon paths.
	
	sed -i "/Office\">/ r ${jwmrc_menus_office_libreoffice_xml}" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"

# Log
	lo_version=$(libreoffice --version | head -n1 | sed 's/.*Office //')
	echo "${GV_LOG} * Install libreoffice-appimage: ${lo_version}."	
	echo "${GV_LOG} * Install Office Suite: Word processor."
	echo "${GV_LOG} * Install Office Suite: Spreadsheet."
	echo "${GV_LOG} * Install Office Suite: Presentation."
	echo "${GV_LOG} * Install Office Suite: Drawing."
	echo "${GV_LOG} * Install Office Suite: Database."
	echo "${GV_LOG} * Install Office Suite: Equation."
	echo "${GV_LOG} * https://wiki.documentfoundation.org/ReleasePlan"
	
# REJECTED because ISO created is 100MB bigger than a normal bigger install. Maybe AppImage is not very compressable?


