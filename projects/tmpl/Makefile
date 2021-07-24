include ../Makefile.h

# EDG mit STLport und SGI iostreams
# (linken geht noch nicht)
#CXX = /local/edg/bin/eccp
#CXXFLAGS = -D_GNU_SOURCE -I/local/stlport/STLport-4.0/stlport
#LDFLAGS=

OUTPROGS = 	max2

PROGS =	max1 stack1 stack2 stack3 stack4 stack5 stack6 \
	dynapoly staticpoly \
	expl1 expl2

MODULES = 	

HEADERS =	

all:: printcoll.o

clean::
	rm -f *.o

clean::
	rm -f $(PROGS)

max1: max1.hpp max1.cpp
	$(CXX) $(CXXFLAGS) max1.cpp -o $@

max2: max2.hpp max2.cpp
	$(CXX) $(CXXFLAGS) max2.cpp $(LDFLAGS) -o $@

stest1 stack1: stack1.hpp stest1.cpp
	$(CXX) $(CXXFLAGS) stest1.cpp $(LDFLAGS) -o $@

stest2 stack2: stack1.hpp stack2.hpp stest2.cpp
	$(CXX) $(CXXFLAGS) stest2.cpp $(LDFLAGS) -o $@

stest3 stack3: stack3.hpp stest3.cpp
	$(CXX) $(CXXFLAGS) stest3.cpp $(LDFLAGS) -o $@

stest4 stack4: stack4.hpp stest4.cpp
	$(CXX) $(CXXFLAGS) stest4.cpp $(LDFLAGS) -o $@

stest5 stack5: stack5.hpp stack5decl.hpp stack5assign.hpp stest5.cpp
	$(CXX) $(CXXFLAGS) stest5.cpp $(LDFLAGS) -o $@

stest6 stack6: stack6.hpp stest6.cpp
	$(CXX) $(CXXFLAGS) stest6.cpp $(LDFLAGS) -o $@

expl1: expl1.hpp expldef1.hpp expltest1.cpp expldef1.cpp
	cp expl1.hpp expl.hpp
	cp expldef1.hpp expldef.hpp
	$(CXX) $(CXXFLAGS) expldef1.cpp expltest1.cpp $(LDFLAGS) -o $@
	rm expl.hpp expldef.hpp

expl2: expl1.hpp expldef1.hpp expltest1.cpp expldef2.cpp
	cp expl1.hpp expl.hpp
	cp expldef1.hpp expldef.hpp
	$(CXX) $(CXXFLAGS) expldef2.cpp expltest1.cpp $(LDFLAGS) -o $@
	rm expl.hpp expldef.hpp

tmpl1: tmpl1.hpp tmpl1.cpp
	$(CXX) $(CXXFLAGS) tmpl1.cpp -o $@
tmpl2a.o: tmpl2.hpp tmpl2a.cpp
tmpl2b.o: tmpl2.hpp tmpl2b.cpp
tmpl2: tmpl2a.o tmpl2b.o
	@echo "Dateien:"
	@ls tmpl2*
	@echo ""
	$(CXX) $(CXXFLAGS) tmpl2a.o tmpl2b.o $(LDFLAGS) -o $@

dynapoly: coord.hpp dynahier.hpp dynapoly.cpp
	echo '#include <vector>' > tmp.cpp
	cat dynahier.hpp dynapoly.cpp >> tmp.cpp
	$(CXX) $(CXXFLAGS) tmp.cpp $(LDFLAGS) -c
staticpoly: coord.hpp statichier.hpp staticpoly.cpp
	echo '#include <vector>' > tmp.cpp
	cat statichier.hpp staticpoly.cpp >> tmp.cpp
	$(CXX) $(CXXFLAGS) tmp.cpp $(LDFLAGS) -c

