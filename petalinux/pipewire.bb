SUMMARY = "PipeWire - Multimedia processing engine"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=2158739e172e58dc9ab1bdd2d6ec9c72"

# Define the Git repository and branch/tag
SRC_URI = "git://github.com/PipeWire/pipewire.git;protocol=https;branch=main"
SRCREV = "79eebcb72490484e25208971ca15b9e0ea25bd95"

S = "${WORKDIR}/git"

DEPENDS = "mesa alsa-lib dbus"

inherit autotools pkgconfig meson

# Extra options if required
EXTRA_OEMESON = "-Ddocs=false -Dman=false -Dpipewire-jack=true"

do_configure() {
    meson ${S} ${B} ${EXTRA_OEMESON}
}

do_compile() {
    meson compile -C ${B}
}

do_install() {
    meson install -C ${B} --destdir=${D}
}

