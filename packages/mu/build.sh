TERMUX_PKG_HOMEPAGE=https://www.djcbsoftware.nl/code/mu/
TERMUX_PKG_DESCRIPTION="Maildir indexer/searcher and Emacs client (mu4e)"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.8.2"
TERMUX_PKG_SRCURL=https://github.com/djcb/mu/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=28ae5a2066a862737e389281f8b8cabb056db2d6131810a16e43aa31b5a02491
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="emacs, glib, libc++, libxapian, libgmime"

termux_step_create_debscripts() {
	cat <<- EOF > ./postinst
	#!$TERMUX_PREFIX/bin/sh
	echo "(setq byte-compile-warnings nil)" > $TERMUX_PREFIX/share/emacs/site-lisp/mu4e/nowarnings.el
	LC_ALL=C $TERMUX_PREFIX/bin/emacs -no-site-file -q -batch -l $TERMUX_PREFIX/share/emacs/site-lisp/mu4e/nowarnings.el -f batch-byte-compile $TERMUX_PREFIX/share/emacs/site-lisp/mu4e/*.el
	rm -f $TERMUX_PREFIX/share/emacs/site-lisp/mu4e/nowarnings.elc
	rm -f $TERMUX_PREFIX/share/emacs/site-lisp/mu4e/nowarnings.el
	chmod 644 $TERMUX_PREFIX/share/emacs/site-lisp/mu4e/*.elc
	EOF

	cat <<- EOF > ./prerm
	rm -f $TERMUX_PREFIX/share/emacs/site-lisp/mu4e/*.elc
	EOF
}
