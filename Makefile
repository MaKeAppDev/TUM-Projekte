all:
	bundle exec jekyll build

run:
	bundle exec jekyll serve

test:
	bundle exec jekyll build -d _site/TUM-Projekte
	bundle exec htmlproofer _site --disable-external

install:
	sudo apt install ruby ruby-dev -y
	sudo gem install jekyll bundler
	bundle install

clean:
	bundle exec jekyll clean

rebuild: clean all

update:
	bundle update
