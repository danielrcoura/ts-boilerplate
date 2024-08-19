.PHONY: test

run:
	@npm start

build:
	@npm run build

test:
	@npm test

test-watch:
	@npm run test:watch

lint:
	@npm run lint

lint-fix:
	@npm run lint:fix