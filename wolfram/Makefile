##
## EPITECH PROJECT, 2023
## wolfram
## File description:
## Makefile
##

BINARY_PATH = $(shell stack path --local-install-root)
TEST_SRC = $(wildcard src/*.hs app/*.hs)
NAME = wolfram
MSG = ""

all :
	@stack build
	@cp $(BINARY_PATH)/bin/$(NAME)-exe $(NAME)

clean :
	@echo -e "\n\033[1;35m\tC L E A N I N G   P R O J E C T\033[0m\n"
	@stack clean
	@rm -f test_exec
	@rm -f src/*.o
	@rm -f src/*.hi
	@rm -f app/*.o
	@rm -f app/*.hi
	@rm -f *.a

tester :
	@echo -e "\n\033[1;35m\tT E S T I N G   P R O J E C T\033[0m\n"
	@ghc -o $(NAME) $(TEST_SRC)
	./$(NAME) --rule 90  --lines 20 --window 80

fclean : clean
	@rm -f $(NAME)
	@echo -e "\n\033[1;35m\tB I N A R Y   R E M O V E D\033[0m\n"

cs : fclean
	@coding-style . .
	@clear
	@echo -e "\n\033[1;35m\tC O D I N G   S T Y L E\033[0m\n"
	@cat coding-style-reports.log
	@rm -f coding-style-reports.log

commit : fclean
	@git add -A
	@read -p "Commit message [$(MSG)]: " NEW_MSG; \
	MSG="$${NEW_MSG:-$(MSG)}" && \
	git commit -m "$$MSG" && \
	git push origin main
	@clear
	@echo -e "\n\033[1;35m\tP R O J E C T   P U S H E D\033[0m\n"

re : fclean all
	@stack build
	@cp $(BINARY_PATH)/bin/$(NAME)-exe $(NAME)
	@echo -e "\n\033[1;35m\tP R O J E C T   R E C O M P I L E D\033[0m\n"

.PHONY : all clean fclean re
