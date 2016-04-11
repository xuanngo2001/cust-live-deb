CC = cc  -D_FORTIFY_SOURCE=2
CFLAGS = -g -O2 -fPIE -fstack-protector-strong -Wformat -Werror=format-security -Wall -pedantic -I/usr/include/libpng12  -I/usr/include/freetype2   -I/usr/include/fribidi  -DLOCALEDIR=\"/usr/share/locale\"
CPPFLAGS = -D_FORTIFY_SOURCE=2
LDFLAGS = -fPIE -pie -Wl,-z,relro -Wl,-z,now -lX11 -lpng12  -lXft  -lXrender -lX11  -lfribidi  -lXpm -lXext -lXinerama 
BINDIR = $(DESTDIR)/usr/bin

VPATH=.:os

OBJECTS = action.o background.o border.o button.o client.o clientlist.o \
	clock.o color.o command.o confirm.o cursor.o debug.o desktop.o dock.o \
	event.o error.o font.o grab.o gradient.o group.o help.o hint.o icon.o \
	image.o key.o lex.o main.o match.o menu.o misc.o move.o outline.o pager.o \
   parse.o place.o popup.o render.o resize.o root.o screen.o settings.o \
   spacer.o status.o swallow.o taskbar.o timing.o tray.o traybutton.o \
   winmenu.o

EXE = jwm

.SUFFIXES: .o .h .c

all: $(EXE)

install: all
	install -d $(BINDIR)
	install $(EXE) $(BINDIR)/$(EXE)

install-strip: install
	strip $(BINDIR)/$(EXE)

uninstall:
	rm -f $(BINDIR)/$(EXE)

$(EXE): $(OBJECTS)
	$(CC) -o $(EXE) $(OBJECTS) $(LDFLAGS)

.c.o:
	$(CC) -c $(CFLAGS) $(CPPFLAGS) $<

$(OBJECTS): *.h ../config.h

clean:
	rm -f $(OBJECTS) $(EXE) core

