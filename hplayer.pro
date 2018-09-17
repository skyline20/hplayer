#-------------------------------------------------
#
# Project created by QtCreator 2018-05-01T12:34:56
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TEMPLATE = app

TARGET          = hplayer
MOC_DIR         = tmp/moc
RCC_DIR         = tmp/rcc
UI_DIR          = tmp/ui
OBJECTS_DIR     = tmp/obj

#PRECOMPILED_HEADER  = src/ui/qtheaders.h

DEFINES += QT_DEPRECATED_WARNINGS
RESOURCES += rc/skin.qrc rc/image.qrc
TRANSLATIONS = rc/lang/app_zh_CN.ts rc/lang/app_zh_CN.qm

INCLUDEPATH += 3rd/include src

# hw
INCLUDEPATH += src/hw
HEADERS += \
    src/hw/base64.h \
    src/hw/h.h \
    src/hw/hbuf.h \
    src/hw/hbytearray.h \
    src/hw/hdef.h \
    src/hw/herr.h \
    src/hw/hframe.h \
    src/hw/hgl.h \
    src/hw/hgui.h \
    src/hw/hlog.h \
    src/hw/hmutex.h \
    src/hw/hobj.h \
    src/hw/hplatform.h \
    src/hw/hscope.h \
    src/hw/hstring.h \
    src/hw/htable.h \
    src/hw/hthread.h \
    src/hw/htime.h \
    src/hw/hvar.h \
    src/hw/hversion.h \
    src/hw/singleton.h \

SOURCES += \
    src/hw/base64.cpp \
    src/hw/herr.cpp \
    src/hw/hframe.cpp \
    src/hw/hlog.cpp \
    src/hw/hstring.cpp \
    src/hw/htable.cpp \
    src/hw/htime.cpp \

# ui
INCLUDEPATH += src/ui
HEADERS +=  \
    src/ui/centralwidget.h \
    src/ui/hmedialist.h \
    src/ui/hmultiview.h \
    src/ui/hvideotitlebar.h \
    src/ui/hvideotoolbar.h \
    src/ui/hvideownd.h \
    src/ui/mainwindow.h \
    src/ui/qtfunctions.h \
    src/ui/qtheaders.h \
    src/ui/qtrcloader.h \
    src/ui/qtstyles.h   \
    src/ui/hglwidget.h \
    src/ui/hvideowidget.h \
    src/ui/hopenmediadlg.h \

SOURCES +=  \
    src/ui/centralwidget.cpp \
    src/ui/hmedialist.cpp \
    src/ui/hmultiview.cpp \
    src/ui/hvideotitlebar.cpp \
    src/ui/hvideotoolbar.cpp \
    src/ui/hvideownd.cpp \
    src/ui/mainwindow.cpp \
    src/ui/qtrcloader.cpp \
    src/ui/hglwidget.cpp \
    src/ui/hvideowidget.cpp \
    src/ui/hopenmediadlg.cpp \

# GL
DEFINES += GLEW_STATIC
INCLUDEPATH += src/GL
HEADERS += src/GL/glew.h
SOURCES += src/GL/glew.c

# video
INCLUDEPATH += src/video
HEADERS +=  \
    src/video/hvideoplayer.h \
    src/video/hvideocapture.h \
    src/video/hvideoplayerfactory.h \
    src/video/hmedia.h \
    src/video/opencv_util.h \

SOURCES += \
    src/video/hvideocapture.cpp

# global
HEADERS += \
    src/appdef.h

SOURCES += \
    src/main.cpp


win32 {
    INCLUDEPATH += src/win32
    HEADERS += src/win32/hdevice.h
    SOURCES += src/win32/hdevice.cpp

    DEFINES += WIN32_LEAN_AND_MEAN

    LIBS += -lkernel32    \
            -luser32      \
            -lgdi32       \
            \
            -lopengl32    \
            -lglu32       \
            \
            -lole32       \
            -loleaut32    \
            -lstrmiids

    LIBS += -lopencv_core341  \
            -lopencv_highgui341   \
            -lopencv_imgcodecs341 \
            -lopencv_imgproc341   \
            -lopencv_videoio341

    # msvc14_x86
    LIBS += -L$$PWD/3rd/lib/msvc14_x86
    DESTDIR = bin/msvc14_x86

    # msvc14_x64
#    LIBS += -L$$PWD/3rd/lib/msvc14_x64
#    DESTDIR = bin/msvc14_x64

    # mingw32
#    LIBS += -L$$PWD/3rd/lib/mingw32
#    DESTDIR = bin/mingw32

    # mingw64
#    LIBS += -L$$PWD/3rd/lib/mingw64
#    DESTDIR = bin/mingw64
}

unix{
}
