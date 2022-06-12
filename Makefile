# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: shan <shan@student.42seoul.kr>             +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/09 21:57:35 by shan              #+#    #+#              #
#    Updated: 2022/06/09 21:57:35 by shan             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME1	= server
NAME2	= client

CC		= gcc
CFLAG	= -Wall -Wextra -Werror

RM		= rm -f

INC		= minitalk.h

SRCS	= minitalk_utils.c\

OBJS	= $(SRCS:.c=.o) 

all		:$(NAME1) $(NAME2)

$(NAME1): server.c $(INC)
	 		$(CC) $(CFLAGS) server.c $(SRCS) -o server
$(NAME2): client.c $(INC)
			$(CC) $(CFLAGS) client.c $(SRCS) -o client
clean	:
		$(RM) $(OBJS)

fclean	: clean
		$(RM) $(NAME1) $(NAME2)

re		: fclean all
