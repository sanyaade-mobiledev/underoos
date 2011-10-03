
SASS_DIR = app/assets/stylesheets
CSS_DIR = test

application.css:
	@compass compile $(SASS_DIR)/application.scss --sass-dir $(SASS_DIR) --css-dir $(CSS_DIR)

styleguide.css:
	@compass compile $(SASS_DIR)/styleguide.scss --sass-dir $(SASS_DIR) --css-dir $(CSS_DIR)

css: application.css styleguide.css

styleguide.html:
	@haml -eq app/views/styleguide/index.haml test/index.html

executable:
	@coffee -o src/ -c src/
	@cat src/header.js > bin/underoos
	@cat src/underoos.js >> bin/underoos
	@chmod +x bin/underoos
	@rm src/underoos.js

