CC = gcc
CFLAGS = -Wall -Wextra -I./src/core -I./src/communication -I./src/mib -I./src/fs
SRC = src/core/cfdp_core.c src/communication/cfdp_communication.c src/mib/cfdp_mib.c src/fs/cfdp_fs.c
OBJ = $(SRC:.c=.o)
TARGET = cfdp_project

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)

.PHONY: all clean