.PHONY: test

run:
	@npm start

test:
	@npm test

test-watch:
	@npm run test:watch

lint:
	@npm run lint

lint-fix:
	@npm run lint:fix