TERMUX_PKG_HOMEPAGE="https://www.videolan.org/developers/libdvbcsa.html"
TERMUX_PKG_DESCRIPTION="An implementation of the DVB Common Scrambling Algorithm - DVB/CSA - with encryption and decryption capabilities"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="MrAdityaAlok <dev.aditya.alok@gmail.com>"
TERMUX_PKG_VERSION=1.1.0
TERMUX_PKG_REVISION=2
termux_step_pre_configure(){
	autoreconf -fvi
}
