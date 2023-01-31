# docker run --rm  --volume="$PWD:/srv/jekyll:Z" --publish 4000:4000 jekyll/jekyll jekyll serve
FROM jekyll:4.2.2
RUN gem install webrick

