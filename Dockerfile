FROM ubuntu:22.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        postgresql-client-14 \
        gettext-base \
        pgpool2 && \
    rm -rf /var/lib/apt/lists/*

COPY pcp.conf pcp.conf.template
COPY pgpool.conf pgpool.conf.template
COPY pool_hba.conf pool_hba.conf.template
COPY pool_passwd pool_passwd.template
COPY startup.sh startup.sh

ENTRYPOINT "./startup.sh"
