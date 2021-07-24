include ../Makefile.h

OUTPROGS = rftest1 rftest4 geotest1 geotest2

PROGS = rftest2 rftest3 rftest5 \
	amphtest ident1 ident2

clean::
	rm -f geo1 geo2 rfrac2 polydef default

MODULES = 	

HEADERS =	

rfrac1 rftest1: frac91.hpp frac91.cpp rfrac1.hpp rfrac1.cpp rftest1.cpp
	cp frac91.hpp frac.hpp
	cp rfrac1.hpp rfrac.hpp
	$(CXX) $(CXXFLAGS) frac91.cpp rfrac1.cpp rftest1.cpp $(LDFLAGS) -o $@
	rm frac.hpp rfrac.hpp

rfrac2 rftest2: frac91.hpp frac91.cpp rfrac1.hpp rfrac1.cpp rftest2.cpp
	cp frac91.hpp frac.hpp
	cp rfrac1.hpp rfrac.hpp
	$(CXX) $(CXXFLAGS) frac91.cpp rfrac1.cpp rftest2.cpp $(LDFLAGS) -o $@
	rm frac.hpp rfrac.hpp

rfrac3 rftest3: frac93.hpp frac91.cpp rfrac3.hpp rfrac3.cpp rftest2.cpp
	@echo "is anything in frac92.htt that is not in frac93.htt"
	sh ../../bin/filegrep frac92.htt frac93.htt
	cp frac93.hpp frac.hpp
	cp rfrac3.hpp rfrac.hpp
	$(CXX) $(CXXFLAGS) frac91.cpp rfrac3.cpp rftest2.cpp $(LDFLAGS) -o $@
	rm frac.hpp rfrac.hpp

rfrac4 rftest4: frac93.hpp frac91.cpp rfrac3.hpp rfrac3.cpp rftest4.cpp
	cp frac93.hpp frac.hpp
	cp rfrac3.hpp rfrac.hpp
	$(CXX) $(CXXFLAGS) frac91.cpp rfrac3.cpp rftest4.cpp $(LDFLAGS) -o $@
	rm frac.hpp rfrac.hpp

rfrac5 rftest5: frac93.hpp frac91.cpp rfrac5.hpp rfrac3.cpp rftest1.cpp
	echo "failing OK weil op << neu impl werden muesste"
	cp frac93.hpp frac.hpp
	cp rfrac5.hpp rfrac.hpp
	echo "failing OK weil op << neu impl werden muesste"
	$(CXX) $(CXXFLAGS) frac91.cpp rfrac3.cpp rftest1.cpp $(LDFLAGS) -o $@
	rm frac.hpp rfrac.hpp
	echo "failing OK weil op << neu impl werden muesste"

geotest1 geo1: coord.hpp geoobj.hpp line.hpp circle.hpp geotest1.cpp
	$(CXX) $(CXXFLAGS) geotest1.cpp $(LDFLAGS) -o $@

geotest2 geo2: coord.hpp geoobj.hpp line.hpp circle.hpp geogroup.hpp \
               geogroup.cpp geotest2.cpp
	$(CXX) $(CXXFLAGS) geogroup.cpp geotest2.cpp $(LDFLAGS) -o $@

amphtest: car.hpp boat.hpp amph.hpp amphtest.cpp
	$(CXX) $(CXXFLAGS) amphtest.cpp $(LDFLAGS) -o $@

ident1: vehiclehier.hpp ident1.cpp
	$(CXX) $(CXXFLAGS) ident1.cpp $(LDFLAGS) -o $@

ident2: vehiclehier.hpp ident2.cpp
	$(CXX) $(CXXFLAGS) ident2.cpp $(LDFLAGS) -o $@

clean::
	rm -f *.o

clean::
	rm -f frac.hpp $(PROGS)

