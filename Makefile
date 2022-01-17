# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jcluzet <jcluzet@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/21 01:05:24 by jcluzet           #+#    #+#              #
#    Updated: 2021/12/30 14:54:08 by jcluzet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	@make reset
	@cp -r .subject_save .subject
	@gcc .system/main.c .system/push.c .system/generate_subject.c .system/GNL/get_next_line.c .system/GNL/get_next_line_utils.c && ./a.out

exam:
	@make reset
	@cp -r .subject_save .subject
	@gcc .system/main.c .system/push.c .system/generate_subject.c .system/GNL/get_next_line.c .system/GNL/get_next_line_utils.c && ./a.out

help:
	@echo "\x1B[37mType \x1B[32m> /make exam \x1B[37mto start the exam"
	@echo "\x1B[37mType \x1B[32m> /make reset \x1B[37mto reset 42_EXAM"

clean:
	@echo "\033[33m      Type > /make help for some help"

update:
	@git stash
	@git pull

reset:
	@rm -rf .subject
	@rm -rf subject.fr.txt
	@rm -rf .system/verif/*
	@rm -rf rendu/
	@rm -rf subject.en.txt
	@rm -rf traceback

fclean:
	@echo "\033[33m      Type > /make help for some help"

re:
	@echo "\033[33m      Type > /make help for some help"
