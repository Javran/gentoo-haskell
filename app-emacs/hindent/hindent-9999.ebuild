# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

CABAL_FEATURES="bin"
inherit elisp-common git-2 haskell-cabal

DESCRIPTION="Extensible Haskell pretty printer"
HOMEPAGE="https://github.com/chrisdone/hindent"
EGIT_REPO_URI="https://github.com/chrisdone/hindent.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE="emacs vim"

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	>=dev-haskell/haskell-src-exts-1.15 <dev-haskell/haskell-src-exts-1.16
	>=dev-lang/ghc-6.10.4
	emacs? ( virtual/emacs )
	vim? ( app-editors/vim )
"
SITEFILE="50${PN}-gentoo.el"

src_compile() {
	haskell-cabal_src_compile
	if use emacs; then
		pushd elisp
		elisp-compile *.el || die
		popd
	fi
}

src_install() {
	haskell-cabal_src_install
	if use emacs; then
		elisp-install "${PN}" elisp/*.{el,elc}
		elisp-site-file-install "${FILESDIR}/${SITEFILE}"
	fi
	if use vim; then
		insinto /usr/share/vim/vimfiles/plugin
		newins "${DISTDIR}/vim/${PN}.vim" "${PN}.vim"
	fi
	dodoc README.md
}

pkg_postinst() {
	if use emacs; then
		elisp-site-regen
	fi
}

pkg_postrm() {
	if use emacs; then
		elisp-site-regen
	fi
}
