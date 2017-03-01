all: build deploy

build:
	jekyll build

deploy:
	rsync -avr --delete-after --delete-excluded   _site/ marshal:marshal.atlantia.sca.org/

clean:
	rm -rf _site
