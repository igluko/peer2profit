FROM peer2profit/peer2profit_x86_64
RUN apt update \
  && apt dist-upgrade -y \
  && apt install proxychains -y \
  && apt-get clean autoclean \
  && apt-get autoremove --yes \
  && rm -rf /var/lib/{apt,dpkg,cache,log}

CMD ["/bin/sh","-c","proxychains p2pclient -l lbblackfish@gmail.com"]
