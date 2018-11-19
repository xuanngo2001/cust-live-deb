#!/bin/bash
set -e
# Description: Display helps.
#   Add your help file in /usr/local/cld/doc/. (e.g. smartphone-help.txt)
#     If you want different variation, add symbolic link: cd .../cld/doc && ln -s smartphone-help.txt phone-help.txt 
#   Usage: cld-helph.sh smartphone
#   Note: from ../inst-min-con-cld-bin/cld/bin
script_name=$(basename "${0}")

# Define variables.
	topic=$1-help.txt
	doc_dir=$(readlink -ev /usr/local/cld/doc/)

	help_file="${doc_dir}/${topic}"

# Error handling.
	if [ ! -f "${help_file}" ]; then
		echo "${script_name}: Error: ${help_file} no such file. Aborted!"
		echo "   e.g. ./${script_name} [option]"
		echo "   option: " 
		options_list=$(ls /usr/local/cld/doc/*-help.txt | sed 's|.*/||' | sed 's/-help.txt//' | sort | pr -a -t -6 -o4)
		echo "${options_list}"
		exit 1;
	fi

# Display document content.
	cat "${help_file}"