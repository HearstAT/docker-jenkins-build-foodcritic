FROM hearstat/jenkins-build-base:alpine

MAINTAINER Hearst Automation Team "atat@hearst.com"

RUN sudo apk --update add ruby ruby-rake &&\
    runDeps="$( \
  		scanelf --needed --nobanner --recursive /usr/local \
  			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' \
  			| sort -u \
  			| xargs -r apk info --installed \
  			| sort -u \
  	)" &&\
  	sudo apk --update add --virtual .ruby-builddeps $runDeps \
      build-base \
      linux-headers \
      ruby-dev \
      libxml2-dev &&\
      sudo gem install -N foodcritic &&\
      sudo gem install -N rubocop-checkstyle_formatter &&\
      sudo apk del .ruby-builddeps &&\
      sudo rm -rf /var/cache/apk/* &&\
      sudo rm -rf /tmp/*

CMD ["sudo", "/usr/sbin/sshd", "-D"]
