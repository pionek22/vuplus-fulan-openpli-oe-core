DEFAULT_PREFERENCE = "1"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
	file://get-caps-from-src-pad-when-query-caps.patch \
	file://taglist-not-send-to-down-stream-if-all-the-frame-cor.patch \
	file://0001-riff-media-added-fourcc-to-all-mpeg4-video-caps.patch \
	file://0001-riff-media-added-fourcc-to-all-ffmpeg-mpeg4-video-ca.patch \
	file://subparse-avoid-false-negatives-dealing-with-UTF-8.patch \
	"

inherit gitpkgv
SRCREV_base = "2d1c9f8c0fc9f482baac4ac9e71ff02297848eec"
PV = "1.9.0.1+git${SRCPV}"
PKGV = "1.9.0.1+git${GITPKGV}"

PACKAGECONFIG = "\
 ${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'x11', '', d)} \
 ${@bb.utils.contains('DISTRO_FEATURES', 'alsa', 'alsa', '', d)} \
 orc ivorbis ogg theora vorbis cdparanoia \
 "