
NAME			= book
SRC_DIR			= .

SRC_SUB_DIRS	= $(shell find $(SRC_DIR) -type d)
SRCS			= $(foreach DIR, $(SRC_SUB_DIRS), $(wildcard $(DIR)/*.go))

all: $(NAME)

$(NAME): $(SRCS)
	@ go build .

run: all
	clear
	@ ./$(NAME)


