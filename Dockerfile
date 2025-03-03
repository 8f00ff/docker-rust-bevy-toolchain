# syntax=docker/dockerfile:1

FROM rust:1.85.0

RUN <<EOF
  apt update
  apt install -y \
    libasound2-dev \
    libudev-dev \
    mingw-w64
  rustup target add x86_64-pc-windows-gnu
EOF
