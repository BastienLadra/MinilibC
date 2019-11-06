##
## EPITECH PROJECT, 2019
## Makefile
## File description:
## Makefile
##

NAME	=	libasm.so

DIR		=	src


SRCS		=	$(DIR)/memcpy.asm		\
				$(DIR)/memset.asm		\
				$(DIR)/memmove.asm		\
				$(DIR)/putstr.asm		\
				$(DIR)/strchr.asm		\
				$(DIR)/strcmp.asm		\
				$(DIR)/strlen.asm		\
				$(DIR)/strncmp.asm		\

				

NASMFLAGS	=	-f elf64

LDFLAGS		=	-shared

ASM		=	nasm

LD		=	gcc -nostdlib

RM		=	rm -f

OBJS		=	$(SRCS:.asm=.o)

%.o: %.asm

		$(ASM) $(NASMFLAGS) -o $@ $< 

all:		$(NAME)

$(NAME):	$(OBJS)
		@$(LD) $(LDFLAGS) -o $(NAME) $(OBJS)

clean:
		@$(RM) $(OBJS)

fclean:		clean
		@$(RM) $(NAME)

re:		fclean all

.PHONY:		all clean fclean re