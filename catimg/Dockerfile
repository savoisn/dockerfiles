FROM debian:stretch
MAINTAINER Nicolas SAVOIS

RUN apt-get update && apt-get install -y \
	ca-certificates \
	build-essential \
	git \
  cmake \
  imagemagick \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/posva/catimg.git /src
WORKDIR /src
RUN cmake . \
	&& make

COPY img/ /img/


#ENTRYPOINT [ "/bin/bash", "-i", "-c", "sleep 0.1 && ./bin/catimg /img/generator-logo.png"  ]

CMD "/bin/bash"

