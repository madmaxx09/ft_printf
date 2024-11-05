# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mdor <mdor@student.s19.be>                 +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/25 18:35:29 by mdor              #+#    #+#              #
#    Updated: 2024/11/05 19:09:17 by mdor             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS = ft_additionnalfcts.c ft_printf.c ft_numbers.c ft_words.c ft_hexa.c

OBJS = ${SRCS:.c=.o}

all: ${NAME}

%.o: %.c
	gcc -Wall -Wextra -Werror -c $< -o ${<:.c=.o}

${NAME}: ${OBJS}
	ar rc ${NAME} ${OBJS}

clean: 
	rm -f ${OBJS}

fclean: clean
	rm -f ${NAME}

re: fclean all

.PHONY: clean fclean re