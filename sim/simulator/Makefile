CC 		= g++
TARGET 	= sim
SRCS 	= sim_copy.cpp
SRCS 	+= helper.cpp

$(TARGET): $(SRCS)
	$(CC) -Wall -O3 -o $@ $^

all: $(TARGET)
compiler: sim_compiler.cpp helper.cpp
	$(CC) -Wall -O3 -o sim sim_compiler.cpp helper.cpp

clean:
	rm -f $(TARGET)