APP_NAME=hevc_es_brower
BUILD_ROOT=$$PWD/../build/hevc_es_brower/

DEFINES+=$${APP_NAME}

QT += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TEMPLATE = app

CONFIG(debug, debug|release) {
    TARGET=$${APP_NAME}d
    DESTDIR=$${BUILD_ROOT}/bin/debug
    OBJECTS_DIR = debug/.obj
    MOC_DIR     = debug/.moc
    RCC_DIR     = debug/.qrc
    UI_DIR      = debug/.ui
} else {
    TARGET=$${APP_NAME}
    DESTDIR=$${BUILD_ROOT}/bin/release
    OBJECTS_DIR = release/.obj
    MOC_DIR     = release/.moc
    RCC_DIR     = release/.qrc
    UI_DIR      = release/.ui
}

INCLUDEPATH += \
    src/hevcparser/include \
    src/hexview \
    src/common

HEADERS += \
    src/brower/CentralWidget.h \
    src/brower/CommonInfoViewer.h \
    src/brower/HDRInfoViewer.h \
    src/brower/MainWindow.h \
    src/brower/ProfileConformanceAnalyzer.h \
    src/brower/StreamInfoViewer.h \
    src/brower/SyntaxViewer.h \
    src/brower/WarningsViewer.h \
    src/brower/types.h \
    src/brower/version_info.h \
    src/common/ConvToString.h \
    src/hevcparser/include/Hevc.h \
    src/hevcparser/include/HevcParser.h \
    src/hevcparser/include/HevcUtils.h \
    src/hevcparser/src/BitstreamReader.h \
    src/hevcparser/src/HevcParserImpl.h \
    src/hexview/QHexView.h

SOURCES += \
    src/brower/CentralWidget.cpp \
    src/brower/CommonInfoViewer.cpp \
    src/brower/HDRInfoViewer.cpp \
    src/brower/MainWindow.cpp \
    src/brower/ProfileConformanceAnalyzer.cpp \
    src/brower/StreamInfoViewer.cpp \
    src/brower/SyntaxViewer.cpp \
    src/brower/WarningsViewer.cpp \
    src/brower/main.cpp \
    src/common/ConvToString.cpp \
    src/hevcparser/src/BitstreamReader.cpp \
    src/hevcparser/src/Hevc.cpp \
    src/hevcparser/src/HevcParser.cpp \
    src/hevcparser/src/HevcParserImpl.cpp \
    src/hevcparser/src/HevcUtils.cpp \
    src/hexview/QHexView.cpp
