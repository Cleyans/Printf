NAME = libftprintf.a

SRC = src/ft_printf.c src/ft_hex.c src/ft_printable.c src/ft_putnbr.c
OBJ = $(SRC:.c=.o)
cc = cc
CFLAGS = -Wall -Wextra -Werror

all : $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re