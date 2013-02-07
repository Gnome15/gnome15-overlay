EAPI="3"

inherit python

DESCRIPTION="Based on Impulse screenlet, provides a specturm analyser plugin for Gnome15"
HOMEPAGE="http://www.gnome15.org/"
SRC_URI="http://www.gnome15.org/downloads/Gnome15/Optional/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~alpha amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND="app-misc/gnome15-core
		 sci-libs/fftw:3.0
		 media-sound/pulseaudio"
DEPEND="${RDEPEND}"
PYTHON_DEPEND="2:2.6"

pkg_setup() {
	python_set_active_version 2
	python_pkg_setup
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
}
