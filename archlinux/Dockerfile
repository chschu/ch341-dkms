FROM archlinux:base-devel

ADD . /build/
RUN pacman -Sy --noconfirm git dkms && useradd -m bob && chown -R bob:bob /build/
USER bob
WORKDIR /build/
RUN ./build.sh
ENTRYPOINT cp /build/ch341-dkms-*.pkg.tar.xz /output/
VOLUME /output/
