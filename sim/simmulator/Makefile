CC 		= g++
TARGET 	= sim
SRCS 	= sim2.cpp
SRCS 	+= helper.cpp
OBJS 	= $(SRCS:.c=.o)

$(TARGET): $(OBJS)
	$(CC) -o $@ $^

$(OBJS): $(SRCS)
	$(CC) -c $(SRCS)

all: $(TARGET)

clean:
	rm -f $(TARGET)