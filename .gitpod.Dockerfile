# You can find the new timestamped tags here: https://hub.docker.com/r/gitpod/workspace-full/tags
FROM gitpod/workspace-full:2022-11-15-17-00-18

COPY ./build_support /build_support

RUN yes Y |sudo /build_support/packages.sh
# https://clangd.llvm.org/installation#installing-clangd
RUN sudo apt-get install clangd-12
RUN sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100