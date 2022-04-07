FROM quay.io/wakaba/docker-perl-app-base

RUN cd /app && ./perl local/bin/pmbp.pl --install-commands docker

## License: Public Domain.