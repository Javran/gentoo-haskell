# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="HandsomeSoup"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Work with HTML more easily in HXT"
HOMEPAGE="https://github.com/egonSchiele/HandsomeSoup"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/http:=[profile?]
		dev-haskell/hxt:=[profile?]
		dev-haskell/hxt-http:=[profile?]
		dev-haskell/maybet:=[profile?]
		dev-haskell/mtl:=[profile?]
		dev-haskell/network:=[profile?]
		dev-haskell/network-uri:=[profile?]
		dev-haskell/parsec:=[profile?]
		dev-haskell/transformers:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	cabal_chdeps \
		'network' 'network, network-uri'
}
