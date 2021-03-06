# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Finite Fields"
HOMEPAGE="http://hackage.haskell.org/package/finite-field"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/hashable:=[profile?]
	>=dev-haskell/type-level-numbers-0.1.1.0:=[profile?] <dev-haskell/type-level-numbers-0.2.0.0:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/hunit
		dev-haskell/primes
		>=dev-haskell/quickcheck-2 <dev-haskell/quickcheck-3
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit
		dev-haskell/test-framework-quickcheck2
		dev-haskell/test-framework-th
		>=dev-haskell/type-level-numbers-0.1.1.0 <dev-haskell/type-level-numbers-0.2.0.0 )
"
