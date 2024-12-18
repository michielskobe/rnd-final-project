QT += core gui widgets
greaterThan(5, 4)

CONFIG += c++20

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    audioeffectwidget.cpp \
    bluetoothwidget.cpp \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    audioeffectwidget.h \
    bluetoothwidget.h \
    mainwindow.h \
    sg14/auxiliary/boost.multiprecision.h \
    sg14/auxiliary/boost.simd.h \
    sg14/auxiliary/const_integer.h \
    sg14/auxiliary/elastic_fixed_point.h \
    sg14/auxiliary/elastic_integer.h \
    sg14/auxiliary/multiprecision.h \
    sg14/auxiliary/numeric.h \
    sg14/auxiliary/overflow.h \
    sg14/auxiliary/precise_integer.h \
    sg14/auxiliary/safe_integer.h \
    sg14/bits/common.h \
    sg14/bits/config.h \
    sg14/bits/fixed_point_arithmetic.h \
    sg14/bits/fixed_point_common_type.h \
    sg14/bits/fixed_point_extras.h \
    sg14/bits/fixed_point_make.h \
    sg14/bits/fixed_point_math.h \
    sg14/bits/fixed_point_named.h \
    sg14/bits/fixed_point_operators.h \
    sg14/bits/fixed_point_type.h \
    sg14/bits/limits.h \
    sg14/bits/number_base.h \
    sg14/bits/type_traits.h \
    sg14/fixed_point \
    sg14/num_traits.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    build/blendinator-Release/filter_process.py \
    build/blendinator-Release/receive_midi_data.py
