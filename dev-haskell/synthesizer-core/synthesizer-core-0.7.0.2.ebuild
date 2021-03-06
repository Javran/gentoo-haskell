# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.2.9999

CABAL_FEATURES="lib profile test-suite" # haddock hoogle hscolour, encoding
inherit haskell-cabal

DESCRIPTION="Audio signal processing coded in Haskell: Low level part"
HOMEPAGE="http://www.haskell.org/haskellwiki/Synthesizer"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+optimizeadvanced"

RESTRICT=test # slow

RDEPEND=">=dev-haskell/binary-0.1:=[profile?] <dev-haskell/binary-1:=[profile?]
	>=dev-haskell/event-list-0.1:=[profile?] <dev-haskell/event-list-0.2:=[profile?]
	>=dev-haskell/explicit-exception-0.1.6:=[profile?] <dev-haskell/explicit-exception-0.2:=[profile?]
	>=dev-haskell/non-empty-0.2:=[profile?] <dev-haskell/non-empty-0.3:=[profile?]
	>=dev-haskell/non-negative-0.1:=[profile?] <dev-haskell/non-negative-0.2:=[profile?]
	>=dev-haskell/numeric-prelude-0.4:=[profile?] <dev-haskell/numeric-prelude-0.5:=[profile?]
	>=dev-haskell/numeric-quest-0.1:=[profile?] <dev-haskell/numeric-quest-0.3:=[profile?]
	>=dev-haskell/quickcheck-1:2=[profile?] <dev-haskell/quickcheck-3:2=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-2.0:=[profile?]
	>=dev-haskell/sample-frame-np-0.0.4:=[profile?] <dev-haskell/sample-frame-np-0.1:=[profile?]
	>=dev-haskell/sox-0.1:=[profile?] <dev-haskell/sox-0.3:=[profile?]
	>=dev-haskell/storable-record-0.0.1:=[profile?] <dev-haskell/storable-record-0.1:=[profile?]
	>=dev-haskell/storable-tuple-0.0.1:=[profile?] <dev-haskell/storable-tuple-0.1:=[profile?]
	>=dev-haskell/storablevector-0.2.5:=[profile?] <dev-haskell/storablevector-0.3:=[profile?]
	>=dev-haskell/stream-fusion-0.1.2:=[profile?] <dev-haskell/stream-fusion-0.2:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-haskell/utility-ht-0.0.5:=[profile?] <dev-haskell/utility-ht-0.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.14
"

src_prepare() {
	cabal_chdeps \
		'transformers >=0.2 && <0.4' 'transformers >=0.2 && <0.5'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag optimizeadvanced optimizeadvanced)
}
