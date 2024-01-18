PKG_CONF = pkgconf
CXXFLAGS = `${PKG_CONF} --cflags sdl2`
LDFLAGS = -lSDL2

all: bin/01/main

bin/01/main: ch/01/main.o
	@mkdir $(dir $@) -p
	${CXX} -o $@ $^ ${LDFLAGS}

ch/01/main.o: ch/01/main.cpp
	${CXX} -c -o $@ $^ ${CXXFLAGS}
