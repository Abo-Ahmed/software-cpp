include ../Makefile.h

OUTPROGS = cstest1

PROGS =	stringtest1 stringtest2 stringtest3 stringtest4 \
	cstest2 \
	ptest3 ptest4

MODULES = 	

HEADERS =	

string1a.cpp: string1a.ctt
string1b.cpp: string1b.ctt
string1.cpp: string1a.cpp string1b.cpp
	cat string1a.cpp string1b.cpp > string1.cpp

stringtest1 string1: string1.hpp string1.cpp stringtest1.cpp
	cp string1.hpp string.hpp
	sed -e 's/std::isspace/::isspace/g' \
	    -e 's/std::memcpy/::memcpy/g' \
	    -e 's/std::strlen/::strlen/g' \
	    -e 's/std::memcmp/::memcmp/g' < string1.cpp > string1tmp.cpp
	$(CXX) $(CXXFLAGS) string1tmp.cpp stringtest1.cpp $(LDFLAGS) -o $@
	rm string.hpp

stringtest2 string2: string2.hpp string2.cpp stringtest2.cpp
	cp string2.hpp string.hpp
	sed -e 's/std::isspace/::isspace/g' \
	    -e 's/std::memcpy/::memcpy/g' \
	    -e 's/std::strlen/::strlen/g' \
	    -e 's/std::memcmp/::memcmp/g' < string2.cpp > string2tmp.cpp
	$(CXX) $(CXXFLAGS) string2tmp.cpp stringtest2.cpp $(LDFLAGS) -o $@
	rm string.hpp

stringtest3 string3: string3.hpp string3.cpp stringtest3.cpp
	cp string3.hpp string.hpp
	echo '#include <cstdlib>' > test.cpp
	echo '#include <iostream>' >> test.cpp
	echo '#include "string.hpp"' >> test.cpp
	echo 'namespace CPPBook {' >> test.cpp
	cat string3.cpp >> test.cpp
	echo '}' >> test.cpp
	cat stringtest3.cpp >> test.cpp
	$(CXX) $(CXXFLAGS) test.cpp $(LDFLAGS) -o $@
	rm string.hpp

stringtest4 string4: string4.hpp string4.cpp stringtest4.cpp
	cp string4.hpp string.hpp
	echo '#include <cstdlib>' > test.cpp
	echo '#include <iostream>' >> test.cpp
	echo '#include "string.hpp"' >> test.cpp
	echo 'namespace CPPBook {' >> test.cpp
	cat string4.cpp >> test.cpp
	echo '}' >> test.cpp
	cat stringtest4.cpp >> test.cpp
	$(CXX) $(CXXFLAGS) test.cpp $(LDFLAGS) -o $@
	rm string.hpp

cstest1: string5.hpp string5.cpp colstring1.hpp colstring1.cpp cstest1.cpp
	cp string5.hpp string.hpp
	cp colstring1.hpp colstring.hpp
	sed -e 's/std::isspace/::isspace/g' \
	    -e 's/std::memcpy/::memcpy/g' \
	    -e 's/std::strlen/::strlen/g' \
	    -e 's/std::memcmp/::memcmp/g' < string5.cpp > string5tmp.cpp
	$(CXX) $(CXXFLAGS) string5tmp.cpp colstring1.cpp cstest1.cpp $(LDFLAGS) -o $@
	rm string.hpp colstring.hpp

cstest2: string5.hpp string5.cpp colstring1.hpp colstring1.cpp cstest2.cpp
	cp string5.hpp string.hpp
	cp colstring1.hpp colstring.hpp
	sed -e 's/std::isspace/::isspace/g' \
	    -e 's/std::memcpy/::memcpy/g' \
	    -e 's/std::strlen/::strlen/g' \
	    -e 's/std::memcmp/::memcmp/g' < string5.cpp > string5tmp.cpp
	$(CXX) $(CXXFLAGS) string5tmp.cpp colstring1.cpp cstest2.cpp $(LDFLAGS) -o $@
	rm string.hpp colstring.hpp

qqq: string2.hpp string1.cpp colstring1.hpp colstring1.cpp x.cpp
	cp string2.hpp string.hpp
	cp colstring1.hpp colstring.hpp
	mv string1.cpp string1.cpp.tmp
	sed -e 's/std::isspace/::isspace/g' \
	    -e 's/std::memcpy/::memcpy/g' \
	    -e 's/std::strlen/::strlen/g' \
	    -e 's/std::memcmp/::memcmp/g' < string1.cpp.tmp > string1.cpp
	$(CXX) $(CXXFLAGS) string1.cpp colstring1.cpp x.cpp $(LDFLAGS) -o $@
	rm string.hpp colstring.hpp

ptest3: person3.hpp person3.cpp ptest3.cpp
	cp person3.hpp person.hpp
	$(CXX) $(CXXFLAGS) person3.cpp ptest3.cpp $(LDFLAGS) -o $@
	rm person.hpp

ptest4: person4.hpp person3.cpp ptest4.cpp
	cp person4.hpp person.hpp
	$(CXX) $(CXXFLAGS) person3.cpp ptest4.cpp $(LDFLAGS) -o $@
	rm person.hpp

clean::
	rm -f test.cpp string*tmp.cpp *.cpp.tmp

