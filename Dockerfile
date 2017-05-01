FROM nuest/mro

RUN set -ex \
    && apt-get update \
    && apt-get install -y build-essential gfortran python \
    && Rscript -e 'install.packages("igraph")' -e 'install.packages("devtools")' \
    && Rscript -e 'devtools::install_git("https://gitlab.com/racs/Refficiency.git")' \
    && rm -rf /var/lib/apt/lists/* \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
