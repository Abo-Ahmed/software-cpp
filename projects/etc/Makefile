include ../Makefile.h

SHELL=/bin/sh

OUTPROGS = 	

PROGS =		refsem1 transform1 transform2 \
		newhdl1 newhdl2 newhdl3 newhdl4 mynewtest \
		compptr1 compptr2 limits

MODULES = 	

HEADERS =	

refsem1: refsem1.cpp countptr.hpp
	$(CXX) $(CXXFLAGS) $(LDFLAGS) refsem1.cpp -o $@

transform2: transform2.cpp add.hpp
	$(CXX) $(CXXFLAGS) $(LDFLAGS) transform2.cpp -o $@

newhdl2: newhdl2.cpp newhdl2test.cpp
	$(CXX) $(CXXFLAGS) $(LDFLAGS) newhdl2test.cpp -o $@
newhdl3: newhdl3.cpp newhdl3test.cpp
	$(CXX) $(CXXFLAGS) $(LDFLAGS) newhdl3test.cpp -o $@
newhdl4: newhdl4.cpp newhdl4test.cpp
	$(CXX) $(CXXFLAGS) $(LDFLAGS) newhdl4test.cpp -o $@

mynewtest: mynewtest.cpp mynew.cpp mydelete.cpp
	$(CXX) $(CXXFLAGS) $(LDFLAGS) mynewtest.cpp -o $@

