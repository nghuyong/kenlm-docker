# builder stage
FROM alpine

RUN apk --update add \
    git gcc make g++ zlib-dev cmake \
    boost-system boost-thread boost-program_options boost-dev \
    eigen-dev zlib-dev bzip2-dev xz-libs bash

RUN git clone https://github.com/kpu/kenlm

RUN cd kenlm && \
    mkdir -p build && \
    cd build && \
    cmake .. && \
    make -j `nproc`

WORKDIR /kenlm/build/bin

