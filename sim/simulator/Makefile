CC 		= g++
TARGET 	= sim
SRCS 	= sim_copy.cpp
SRCS 	+= helper.cpp

$(TARGET): $(SRCS)
	$(CC) -Wall -O3 -o $@ $^

all: $(TARGET)

clean:
	rm -f $(TARGET)