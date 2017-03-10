FROM nuest/mro

RUN set -ex \
    && apt-get update \
    && apt-get install -y build-essential gfortran python \
    && Rscript -e 'install.packages("igraph")' \
    && rm -rf /var/lib/apt/lists/* \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
