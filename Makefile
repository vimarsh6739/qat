CXX = clang++
CXXFLAGS += -Wall

.PHONY: all
all: naive 

naive: naive.o
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LDFLAGS)

naive.o: naive.cpp
	$(CXX) -c $(CXXFLAGS) -O2 $^ -o $@

.PHONY: clean
clean:
	rm -f *.o
	rm -f naive


