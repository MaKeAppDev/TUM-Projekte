all:
	bundle exec jekyll build

run:
	bundle exec jekyll serve

install:
	sudo apt install ruby ruby-dev -y
	sudo gem install jekyll bundler
	bundle install

clean:
	bundle exec jekyll clean

rebuild: clean all

update:
	bundle update
