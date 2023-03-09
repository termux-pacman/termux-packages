termux_setup_glslang() {
	local GLSLANG_FOLDER

	if [ "${TERMUX_PACKAGES_OFFLINE-false}" = "true" ]; then
		GLSLANG_FOLDER=${TERMUX_SCRIPTDIR}/build-tools/glslang-main-tot
	else
		GLSLANG_FOLDER=${TERMUX_COMMON_CACHEDIR}/glslang-main-tot
	fi

	if [ "$TERMUX_ON_DEVICE_BUILD" = "false" ]; then
		if [ ! -d "$GLSLANG_FOLDER" ]; then
			mkdir -p "$GLSLANG_FOLDER"
			local GLSLANG_ZIP_FILE=$TERMUX_PKG_TMPDIR/glslang-main-linux-Release.zip
			termux_download https://github.com/KhronosGroup/glslang/releases/download/main-tot/glslang-main-linux-Release.zip \
				"$GLSLANG_ZIP_FILE" \
				"SKIP_CHECKSUM"
			unzip "$GLSLANG_ZIP_FILE" -d "$GLSLANG_FOLDER"
		fi
		export PATH=$GLSLANG_FOLDER/bin:$PATH
	else
		if [[ "$TERMUX_APP_PACKAGE_MANAGER" = "apt" && "$(dpkg-query -W -f '${db:Status-Status}\n' glslang 2>/dev/null)" != "installed" ]] ||
		   [[ "$TERMUX_APP_PACKAGE_MANAGER" = "pacman" && ! "$(pacman -Q glslang 2>/dev/null)" ]]; then
			echo "Package 'cmake' is not installed."
			echo "You can install it with"
			echo
			echo "  pkg install glslang"
			echo
			echo "  pacman -S glslang"
			echo
			exit 1
		fi
	fi
}
