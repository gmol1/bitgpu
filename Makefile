CC			= gcc
BUILD_DIR	= build
SRC_DIR		= ./src
SRCS		= $(SRC_DIR)/*.c
CFLAGS		= -Wall
MAIN		= bitgpu
INCLUDES	= -I./include
LIBS		= -lpci

.PHONY: clean

all:	$(BUILD_DIR) $(MAIN)

$(MAIN): $(OBJS)
		$(CC) $(CFLAGS) $(INCLUDES) -o $(BUILD_DIR)/$(MAIN) $(SRCS) $(LFLAGS) $(LIBS)

$(BUILD_DIR):
	mkdir -p $@

clean:
		$(RM) $(BUILD_DIR)/*
