NAME = libftprint.a

SRCS = essai.c

OBJS := ${SRCS:.c:.o}

INC_DIR = includes

CC = gcc

RM = rm -f

CFLAGS = -Wall -Wextra -Werror

.c.o :
		@${CC} ${CFLAGS} -c -I ${INC_DIR} $< -o ${<:.c=.o}

all : ${NAME}

${NAME}: ${OBJS}
		@ar rc ${NAME} ${OBJS}

clean : ${RM} ${OBJS}

fclean : clean
		 @${RM} ${OBJS}
		 @echo "${NAME} have been delated"

re : fclean all

.PHONY : all clean fclean re
