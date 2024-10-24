.PHONY: test

## Starts the project in development mode
run:
	@npm start

## Build
build:
	@npm run build

## Runs tests
test:
	@npm test

## Runs tests in watch mode
test-watch:
	@npm run test:watch

lint:
	@npm run lint

lint-fix:
	@npm run lint:fix


# ========================
# HELP
# ========================

C_RESET                   := \033[0m
C_CYAN                    := \033[1;36m

print:
	@echo -e "\n> ${C_CYAN} $(MESSAGE) ${C_RESET}"

## Task used to display this message
help:
	@echo "Usage:"
	@echo -e "  $$ make ${C_CYAN}[task]${C_RESET}"
	@echo ""
	@echo "Tasks:"
	@awk '/^[a-zA-Z\-\_0-9\.%]+:/ { \
			helpMessage = match(lastLine, /^## (.*)/); \
			if (helpMessage) { \
				tabs = ""; \
				helpCommand = substr($$1, 0, index($$1, ":")-1); \
				if (length(helpCommand)<6) { \
					tabs = tabs"\t" \
				} \
				if (length(helpCommand)<=12) { \
					tabs = tabs"\t" \
				} \
				helpCommand = helpCommand""tabs; \
				helpMessage = substr(lastLine, RSTART + 3, RLENGTH); \
				printf "${C_CYAN}  %s${C_RESET} \t%s\n", helpCommand, helpMessage; \
			} \
		} \
		{ lastLine = $$0 }' $(MAKEFILE_LIST)
	@echo ""
