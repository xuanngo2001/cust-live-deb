# Build ISO
    SYSTEM="min"
	CHROOT_DIR=/media/sql/chroot/
	CHROOT_DIR=$(readlink -ev "${CHROOT_DIR}")
	iso_output_dir=$(readlink -ev "/media/sql")

	./cld-mkiso.sh "${SYSTEM}" "${CHROOT_DIR}" "${iso_output_dir}" ignore