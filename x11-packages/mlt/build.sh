TERMUX_PKG_HOMEPAGE=https://www.mltframework.org/
TERMUX_PKG_DESCRIPTION="Multimedia Framework. Author, manage, and run multitrack audio/video compositions."
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_VERSION="7.32.0"
TERMUX_PKG_SRCURL=https://github.com/mltframework/mlt/releases/download/v${TERMUX_PKG_VERSION}/mlt-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=1ca5aadfe27995c879b9253b3a48d1dcc3b1247ea0b5620b087d58f5521be028
TERMUX_PKG_DEPENDS="alsa-lib, ffmpeg, fftw, fontconfig, frei0r-plugins, gdk-pixbuf, glib, jack, movit, libebur128, libepoxy, libexif, libsamplerate, libvidstab, libvorbis, libx11, libxml2, qt6-qt5compat, qt6-qtbase, qt6-qtsvg, opengl, pango, python, rubberband, sdl, sdl2 | sdl2-compat, sox, zlib"
TERMUX_PKG_BUILD_DEPENDS="ladspa-sdk, libarchive, swig"
TERMUX_PKG_ANTI_BUILD_DEPENDS="sdl2-compat"
TERMUX_PKG_SUGGESTS="$TERMUX_PKG_BUILD_DEPENDS"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_FORCE_CMAKE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DMOD_GLAXNIMATE=ON
-DMOD_GLAXNIMATE_QT6=ON
-DMOD_QT6=ON
-DSWIG_PYTHON=ON
"

termux_step_pre_configure() {
	# Fix linker script error
	LDFLAGS+=" -Wl,--undefined-version"
}
