# dvtm version
VERSION = 0.10

# Customize below to fit your system

PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

INCS = -I. -I/usr/include -I/usr/local/include
LIBS = -lc -lutil -lcurses

CFLAGS += -m32 -std=c99 -Os ${INCS} -DVERSION=\"${VERSION}\" -DNDEBUG
LDFLAGS += -L/usr/lib -L/usr/local/lib -L/usr/local/opt/ncurses/lib ${LIBS}
CPPFLAGS += -I/usr/local/opt/ncurses/include

DEBUG_CFLAGS = ${CFLAGS} -UNDEBUG -O0 -g -ggdb -Wall -Wextra -Wno-missing-field-initializers -Wno-unused-parameter

CC = cc
