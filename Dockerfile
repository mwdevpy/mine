FROM ubuntu:latest
     RUN apt-get update && apt-get install -y build-essential cmake libuv1-dev libssl-dev git
     RUN git clone https://github.com/xmrig/xmrig.git && cd xmrig && mkdir build && cd build && cmake .. && make
     WORKDIR /xmrig/build
     CMD ["./xmrig", "--help"]
