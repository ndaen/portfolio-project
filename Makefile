help: ## Affiche les commandes possibles du makefile
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m  %-30s\033[0m %s\n", $$1, $$2}'

start: ## Lance le site sur un serveur local
	php -S localhost:4567