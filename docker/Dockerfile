FROM ruby:3.2.3

ENV JEKYLL_VAR_DIR=/var/jekyll
ENV JEKYLL_DATA_DIR=/srv/jekyll
ENV JEKYLL_ENV=development

RUN apt-get update

RUN echo "gem: --no-ri --no-rdoc" >~/.gemrc
RUN unset GEM_HOME && unset GEM_BIN && yes | gem update --system

RUN unset GEM_HOME && unset GEM_BIN && yes | gem install --force bundler

# speeds up installation of html-proofer
ENV NOKOGIRI_USE_SYSTEM_LIBRARIES=true
RUN gem install jekyll rspec html-proofer pygments.rb jekyll-pandoc

RUN mkdir -p $JEKYLL_VAR_DIR $JEKYLL_DATA_DIR && rm -rf /root/.gem /home/jekyll/.gem $BUNDLE_HOME/cache $GEM_HOME/cache

ENV LANG C.UTF-8

WORKDIR /srv/jekyll
VOLUME /srv/jekyll
EXPOSE 35729
EXPOSE 4000

CMD [ "bundle", "install" ]
