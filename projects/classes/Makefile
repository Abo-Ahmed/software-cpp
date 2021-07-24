include ../Makefile.h

OUTPROGS = 	

#PROGS =	ftest1 ftest2 ftest3 ftest4 ftest5 ftest6 \
#	sqrt1 sqrt2 ftest6sqrt ftest8 ftest10
PROGS =	ftest1 ftest2 ftest3 ftest4 ftest5 ftest5b ftest6 \
	sqrt1 sqrt2 ftest8 ftest10

MODULES = 	

HEADERS =	

ftest1: frac1.hpp frac1.cpp ftest1.cpp
	cp frac1.hpp frac.hpp
	$(CXX) $(CXXFLAGS) frac1.cpp ftest1.cpp $(LDFLAGS) -o $@
	rm frac.hpp

ftest2: frac2.hpp frac2.cpp ftest2.cpp
	cp frac2.hpp frac.hpp
	$(CXX) $(CXXFLAGS) frac2.cpp ftest2.cpp $(LDFLAGS) -o $@
	rm frac.hpp

ftest2x: frac2.hpp frac2.cpp frac2x1.cpp frac2x2.cpp frac2x3.cpp ftest2xWR.cpp
	cp frac2.hpp frac.hpp
	$(CXX) $(CXXFLAGS) frac2.cpp ftest2xWR.cpp $(LDFLAGS) -o $@
	rm frac.hpp

ftest3: frac3.hpp frac3.cpp ftest3.cpp
	cp frac3.hpp frac.hpp
	$(CXX) $(CXXFLAGS) frac3.cpp ftest3.cpp $(LDFLAGS) -o $@
	rm frac.hpp

ftest4: frac4.hpp frac4.cpp ftest4.cpp
	cp frac4.hpp frac.hpp
	$(CXX) $(CXXFLAGS) frac4.cpp ftest4.cpp $(LDFLAGS) -o $@
	rm frac.hpp

# testet frac5 inkl Modifikation
#ftest5: frac5.hpp frac5.cpp frac5scan.cpp ftest5.cpp ftest5y.cpp ftest5yWR.cpp
#	filegrep frac5scan.ctt frac5.ctt
#	cp frac5.hpp frac.hpp
#	$(CXX) $(CXXFLAGS) frac5.cpp ftest5yWR.cpp $(LDFLAGS) -o $@
#	@echo "*** warning zu end of non-void function frac5x() ist OK"
#	@echo "*** frac5x() ist umbenanntes main() ohne return"
#	rm frac.hpp

ftest5: frac5.hpp frac5.cpp ftest5.cpp
	sh ../../bin/filegrep frac5scan.ctt frac5.ctt
	cp frac5.hpp frac.hpp
	$(CXX) $(CXXFLAGS) frac5.cpp ftest5.cpp $(LDFLAGS) -o $@
	rm frac.hpp

ftest5b: frac5.hpp frac5.cpp ftest5b.cpp ftest5bWR.cpp
	cp frac5.hpp frac.hpp
	$(CXX) $(CXXFLAGS) frac5.cpp ftest5bWR.cpp $(LDFLAGS) -o $@
	rm frac.hpp

ftest6: frac6.hpp frac6.cpp frac6WR.cpp ftest6.cpp
	cp frac6.hpp frac.hpp
	$(CXX) $(CXXFLAGS) frac6WR.cpp ftest6.cpp $(LDFLAGS) -o $@
	rm frac.hpp

sqrt1: frac6sqrt.hpp frac6.cpp frac6WR.cpp sqrt1.cpp
	cp frac6sqrt.hpp frac.hpp
	$(CXX) $(CXXFLAGS) frac6WR.cpp sqrt1.cpp $(LDFLAGS) -o $@
	rm frac.hpp

ftest6sqrt: frac6sqrt.hpp frac6.cpp frac6WR.cpp ftest6.cpp
	cp frac6sqrt.hpp frac.hpp
	$(CXX) $(CXXFLAGS) frac6WR.cpp ftest6.cpp $(LDFLAGS) -o $@
	rm frac.hpp

frac7 sqrt2: frac7.hpp frac7.cpp sqrt2.cpp
	cp frac7.hpp frac.hpp
	$(CXX) $(CXXFLAGS) frac7.cpp sqrt2.cpp $(LDFLAGS) -o $@
	rm frac.hpp

ftest8: frac8.hpp frac8.cpp ftest8.cpp
	cp frac8.hpp frac.hpp
	$(CXX) $(CXXFLAGS) frac8.cpp ftest8.cpp $(LDFLAGS) -o $@
	rm frac.hpp

ftest10: frac10.hpp frac10WR.hpp frac10.cpp frac10WR.cpp ftest10.cpp ftest10read.cpp ftest10WR.cpp
	cp frac10WR.hpp frac.hpp
	$(CXX) $(CXXFLAGS) frac10WR.cpp ftest10WR.cpp $(LDFLAGS) -o $@
	rm frac.hpp

clean::
	rm -f *.o

clean::
	rm -f frac.hpp $(PROGS)

