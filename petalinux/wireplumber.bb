SUMMARY = "WirePlumber - Session manager for PipeWire"
HOMEPAGE = "https://github.com/PipeWire/wireplumber"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=17d1fe479cdec331eecbc65d26bc7e77"

# Source repository and branch or tag for the WirePlumber project on GitHub
SRC_URI = "git://github.com/PipeWire/wireplumber.git;protocol=https;branch=main"
SRCREV = "141b2d5d3f793e20f94421c554d8d9c51143ce0d"

S = "${WORKDIR}/git"

# Dependencies required to build WirePlumber
DEPENDS = "pipewire glib-2.0 json-c dbus"

# Use Meson as the build system and enable pkgconfig for dependency management
inherit meson pkgconfig systemd

# Additional Meson options
EXTRA_OEMESON = "-Dsystemd-system-service=true -Dsystemd-user-service=true"

# Specify systemd service to be installed if applicable
SYSTEMD_SERVICE:${PN} = "wireplumber.service"

do_configure() {
    meson ${S} ${B} ${EXTRA_OEMESON}
}

do_compile() {
    meson compile -C ${B}
}

do_install() {
    meson install -C ${B} --destdir=${D}
}

# File packaging and runtime dependencies
FILES:${PN} += "${systemd_system_unitdir}/wireplumber.service"
RDEPENDS:${PN} += "pipewire"

