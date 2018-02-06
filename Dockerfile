FROM ubuntu:17.10

RUN apt-get update && apt-get install -y \
        build-essential \
        cscope \
        curl \
        gdebi-core \
        git \
        inetutils-traceroute \
        iputils-ping \
        libncurses5-dev \
        libncursesw5-dev \
        netcat \
        perl \
        pwgen --no-install-recommends \
        python3-software-properties \
        realpath \
        software-properties-common \
        vim-gnome \
        wget

COPY ./sources.list /etc/apt/sources.list
RUN apt-get update && apt-get build-dep -y vim-gnome
RUN apt-get install -y rsync
RUN apt-get source vim-gnome

# Clean up APT when done.
#RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
WORKDIR /root
COPY ./entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]
