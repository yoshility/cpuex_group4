CC 		= g++
TARGET 	= sim
SRCS 	= sim2.cpp
SRCS 	+= helper.cpp

$(TARGET): $(SRCS)
	$(CC) -Wall -o $@ $^

all: $(TARGET)

clean:
	rm -f $(TARGET)