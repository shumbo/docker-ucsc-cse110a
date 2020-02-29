FROM debian

RUN apt-get update
RUN apt-get install -y curl build-essential clang nasm gcc-multilib valgrind gdb
RUN curl -sSL https://get.haskellstack.org/ | sh
