# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Live visualization of data structures in GHCi"
HOMEPAGE="http://felsin9.de/nnis/ghc-vis"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+full +graph"

RDEPEND=">=dev-haskell/cairo-0.12:=[profile?] <dev-haskell/cairo-0.14:=[profile?]
	>=dev-haskell/fgl-5.4:=[profile?] <dev-haskell/fgl-5.6:=[profile?]
	>=dev-haskell/ghc-heap-view-0.5:= <dev-haskell/ghc-heap-view-0.6:=
	>=dev-haskell/gtk-0.12:=[profile?] <dev-haskell/gtk-0.14:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/svgcairo-0.12:=[profile?] <dev-haskell/svgcairo-0.14:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	graph? ( >=dev-haskell/graphviz-2999.17:=[profile?] <dev-haskell/graphviz-2999.18:=[profile?]
			>=dev-haskell/xdot-0.2:=[profile?] <dev-haskell/xdot-0.3:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag full full) \
		$(cabal_flag graph graph)
}