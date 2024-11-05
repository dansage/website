
# do everything we need at once
all: styles

# install all packages we need using NPM
dependencies:
	@cd ./src/ && \
	npm ci && \
	cd ..

# using Node.js, compile the stylesheets using only the required classes
styles: dependencies
	@cd ./src/ && \
	npx tailwindcss -i css/source.css -o ../public/css/app.css --minify && \
	cd ..
