#!/bin/bash
set -e
# Description: Main script to create Cust-Live-Deb system.
this_script=$(basename "${0}")
DATE_TIME_STR=$(date +'%Y-%m-%d_%H.%M.%S')
CURR_EXEC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
#mkdir -p ${CURR_EXEC_DIR}/logs; exec > >(tee ${CURR_EXEC_DIR}/logs/${this_script}_${DATE_TIME_STR}.log) 2>&1
echo "⭐ ============ ${this_script}: ${DATE_TIME_STR} ============"
echo "💲 ./${this_script} $*"


SYSTEM=$(echo $1 | tr '[:upper:]' '[:lower:]')
DEB_REPO_URL=$2

# Error handling
  ARGS_REQUIRED=2
  CMD_EXAMPLES=$(printf " %s\n %s\n %s\n" \
                        " e.g. $0 <SYSTEM> <DEB_REPO_URL>"\
                        " e.g. $0 std http://ftp.debian.org/debian"\
                        " e.g. $0 min http://localhost/aptly-repo/master_jessie-main"\
                )
  if [ "$#" -ne "${ARGS_REQUIRED}" ]; then
		echo "Error: ${ARGS_REQUIRED} arguments are required. Aborted!"
		echo "${CMD_EXAMPLES}"
		exit 1;
  fi

# Update manuals.
	./cld-manuals-create.sh

# Update cld-tools scripts on the host. Ensure the latest scripts and versions.
	./cld-tools-deploy.sh

# Build ISO
	CHROOT_DIR=/media/sql/chroot/
	rm -rf "${CHROOT_DIR}"
	mkdir -p "${CHROOT_DIR}"
	CHROOT_DIR=$(readlink -ev "${CHROOT_DIR}")
	iso_output_dir=$(readlink -ev "/media/sql")

	./cld-umount.sh "${CHROOT_DIR}" || true
	./cld-debootstrap.sh "${CHROOT_DIR}" "${DEB_REPO_URL}"
	./cld-mount.sh "${CHROOT_DIR}"
	./cld-chroot.sh "${SYSTEM}" "${CHROOT_DIR}"
	./cld-umount.sh "${CHROOT_DIR}" || true
	./cld-chroot-log-backup.sh "${CHROOT_DIR}/root/scripts/logs" "${PWD}"
	./cld-mkiso.sh "${SYSTEM}" "${CHROOT_DIR}" "${iso_output_dir}" ignore

  
# Logs.
	LOG_DIR=./logs/
	./cld-shlog.sh "${LOG_DIR}"
	./cld-logs-extract-package-sizes.sh "${LOG_DIR}"
	./cld-logs-backup.sh "${LOG_DIR}"
	
# Done
	./cld-done-line.sh

	
echo "@@@@@@@@@@EEEE ${this_script} 👍 EEEE@@@@@@@@@@"