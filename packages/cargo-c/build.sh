TERMUX_PKG_HOMEPAGE=https://github.com/lu-zero/cargo-c
TERMUX_PKG_DESCRIPTION="Cargo C-ABI helpers"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="0.10.16"
TERMUX_PKG_SRCURL=https://github.com/lu-zero/cargo-c/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=c0ebb3175393da5b55c3cd83ba1ae9d42d32e2aece6ceff1424239ffb68eb3e3
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_VERSION_REGEXP='^\d+\.\d+(\.\d+)?$'
TERMUX_PKG_DEPENDS="libcurl, libgit2, libssh2, openssl, zlib"
TERMUX_PKG_BUILD_IN_SRC=true

termux_pkg_auto_update() {
	local latest_tag="$(termux_github_api_get_tag "${TERMUX_PKG_SRCURL}" "${TERMUX_PKG_UPDATE_TAG_TYPE}")"
	if grep -qP "${TERMUX_PKG_UPDATE_VERSION_REGEXP}" <<<"${latest_tag}"; then
		termux_pkg_upgrade_version "${latest_tag}"
	else
		echo "INFO: No update needed, tag '${latest_tag}' is not a stable release."
	fi
}

termux_step_pre_configure() {
	export LIBGIT2_SYS_USE_PKG_CONFIG=1
	export LIBSSH2_SYS_USE_PKG_CONFIG=1

	termux_setup_rust

	if [[ "${TERMUX_ARCH}" == "x86_64" ]]; then
		local env_host=$(printf $CARGO_TARGET_NAME | tr a-z A-Z | sed s/-/_/g)
		export CARGO_TARGET_${env_host}_RUSTFLAGS+=" -C link-arg=$($CC -print-libgcc-file-name)"
	fi

	# clash with rust host build
	unset CFLAGS
}
