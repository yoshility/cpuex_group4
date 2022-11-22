CC 		= gcc
TARGET 	= asm
SRCS 	= asm.c
SRCS 	+= helper.c
OBJS 	= $(SRCS:.c=.o)

$(TARGET): $(OBJS)
	$(CC) -o $@ $^

$(OBJS): $(SRCS)
	$(CC) -c $(SRCS)

all: $(TARGET)

clean:
	rm -f $(OBJS) $(TARGET)