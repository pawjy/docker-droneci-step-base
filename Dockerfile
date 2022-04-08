FROM quay.io/wakaba/docker-perl-app-base

RUN cd /app && ./perl local/bin/pmbp.pl \
    --execute-system-package-installer --dump-info-file-before-die \
    --install-commands docker

RUN apt-get install -y pip && \
    (pip install awscli --upgrade || pip3 install awscli --upgrade)

## License: Public Domain.