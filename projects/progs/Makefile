include ../Makefile.h

#SHELL=/bin/sh

#OUTPROGS = 	crosstest string1 html eh1
OUTPROGS = 	

PROGS =		hello helloold fourdigits charset crosstest string1 html \
		eh1 eh3 string2 argv swap

all::		cstring.o eh2.o

MODULES = 	

HEADERS =	cross.hpp

fourdigits: fourdigits.cpp
	$(CXX) $(CXXFLAGS) $(LDFLAGS) fourdigits.cpp -o $@
crosstest: cross.cpp crosstest.cpp cross.hpp
	$(CXX) $(CXXFLAGS) $(LDFLAGS) cross.cpp crosstest.cpp -o $@

eh1.out: eh1
	eh1 2> eh1.out
eh1.ott: eh1.out
	echo '\begin{tttzeile}' > eh1.ott
	cat eh1.out >> eh1.ott
	echo '\end{tttzeile}' >> eh1.ott

eh2.o: eh2.cpp
	echo '#include <iostream>' > tmp.cpp
	echo '#include <string>' >> tmp.cpp
	echo 'void f2();' >> tmp.cpp
	cat eh2.cpp >> tmp.cpp
	$(CXX) $(CXXFLAGS) -c tmp.cpp

swap: swap.hpp swap.cpp
	$(CXX) $(CXXFLAGS) $(LDFLAGS) swap.cpp -o $@

