# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit base haskell-cabal

DESCRIPTION="Fast, scalable, mutable dynamic arrays, maps and hashes"
HOMEPAGE="http://code.haskell.org/~dons/code/judy"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.10.4:=
		dev-libs/judy"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2.0"

PATCHES=("${FILESDIR}"/${P}-ghc-7.6.patch)
