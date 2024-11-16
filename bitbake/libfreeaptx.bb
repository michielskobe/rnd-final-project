SUMMARY = "Open Source implementation of the aptX audio codec"
DESCRIPTION = "libfreeaptx is an open-source implementation of the Qualcomm aptX codec, providing high-quality Bluetooth audio codec support."
HOMEPAGE = "https://github.com/iamthehorker/libfreeaptx"
LICENSE = "LGPL-2.1"
LIC_FILES_CHKSUM = "file://COPYING;md5=4fbd65380cdd255951079008b364516c"

SRC_URI = "git://github.com/iamthehorker/libfreeaptx.git;protocol=https;branch=master"
SRCREV = "c176b7de9c2017d0fc1877659cea3bb6c330aafa"

S = "${WORKDIR}/git"

TARGET_CFLAGS += "-W -Wall -O3 -march=armv8-a -mtune=cortex-a53 -fPIC"
TARGET_LDFLAGS += "-s -Wl,-O1"

EXTRA_OEMAKE = "CC='${CC}' CFLAGS='${TARGET_CFLAGS}' LDFLAGS='${TARGET_LDFLAGS}'"

INSANE_SKIP:${PN} = "already-stripped"

do_compile() {
    oe_runmake
}

do_install() {
    oe_runmake install DESTDIR=${D} PREFIX=/usr
}

FILES_${PN} = "${libdir}/*.so* ${includedir}/* ${libdir}/pkgconfig/*.pc ${bindir}/*"