FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=3.0.1

RUN gem install flipstone-ar_mailer --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ar_sendmail"]
CMD ["--help"]
