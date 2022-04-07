FROM quay.io/wakaba/docker-perl-app-base

RUN cd /app && ./perl local/bin/pmbp.pl \
    --execute-system-package-installer --dump-info-file-before-die \
    --install-commands docker

## License: Public Domain.