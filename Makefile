theme:
	cd _themes/corcra; \
	npm i --production; \
	node_modules/.bin/gulp dist;

site:
	wget https://getcomposer.org/composer.phar; \
	chmod +x composer.phar; \
	git clone https://github.com/stakx-io/stakx.git; \
	cd stakx; \
	../composer.phar install --no-dev -o; \
	cd ..; \
	pwd; \
	php stakx/bin/stakx build

build: theme site
