SUMMARY = "Enigma2 plugin to manage your youtube account and watch videos"
DESCRIPTION = "Small plugin to manage your account, search and watch videos \
from youtube"
HOMEPAGE = "https://github.com/Taapat/enigma2-plugin-youtube"
SECTION = "multimedia"
LICENSE = "PD"
LIC_FILES_CHKSUM = "file://src/plugin.py;md5=de25dd3340919096231430c367640d9e"
SRC_URI = "git://github.com/Taapat/enigma2-plugin-youtube.git"
S = "${WORKDIR}/git"

inherit gitpkgv
SRCREV = "${AUTOREV}"
PV = "h1+git${SRCPV}"
PKGV = "h1+git${GITPKGV}"

inherit allarch distutils-openplugins

RDEPENDS_${PN} = " \
	python-core \
	python-codecs \
	python-json \
	python-netclient \
	python-zlib \
	python-twisted-web \
	python-compression \
	python-pyopenssl \
	"

