TERMUX_PKG_HOMEPAGE=https://www.cairographics.org/pycairo/
TERMUX_PKG_DESCRIPTION="Python bindings for the cairo graphics library"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.26.0"
TERMUX_PKG_SRCURL=https://github.com/pygobject/pycairo/releases/download/v${TERMUX_PKG_VERSION}/pycairo-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=2dddd0a874fbddb21e14acd9b955881ee1dc6e63b9c549a192d613a907f9cbeb
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="libcairo, python"
TERMUX_PKG_PYTHON_COMMON_DEPS="wheel"
