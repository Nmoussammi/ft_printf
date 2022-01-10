# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nmoussam <nmoussam@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/04 15:56:21 by nmoussam          #+#    #+#              #
#    Updated: 2022/01/07 22:54:36 by nmoussam         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
FLAGS = -Wall -Wextra -Werror
CFILES = ft_printf.c ft_functions.c ft_functions2.c
OFILES = ${CFILES:.c=.o}
NAME = libftprintf.a
INC = ft_printf.h

all : ${NAME}

${NAME} : ${OFILES}
	ar -rcs ${NAME} ${OFILES}
	
%.o:%.c ${INC}
	${CC} -c ${FLAGS} $<
	
clean : 
	rm -f ${OFILES}

fclean : clean
	rm -f ${NAME}
	
re : fclean all 