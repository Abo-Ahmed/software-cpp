include ../Makefile.h

OUTPROGS = redirect sstr1 sstr2 charstr1

PROGS =	   ioprog charcat1 charcat2 loc1 charset2 cat1 cat2 lexcast

MODULES = 	

HEADERS =	

all:: redirect.txt.ctt

redirect.txt.ctt: redirect.txt
	echo "\begin{tttzeile}" > redirect.txt.ctt
	cat redirect.txt >> redirect.txt.ctt
	echo "\end{tttzeile}" >> redirect.txt.ctt

lexcast: lexcast.hpp lexcast.cpp
	$(CXX) $(CXXFLAGS) lexcast.cpp $(LDFLAGS) -o $@

