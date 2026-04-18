FROM archlinux

USER root

RUN pacman -Sy --noconfirm
RUN yes | pacman -S archlinux-keyring
RUN pacman --sync --noconfirm --noprogressbar --quiet ffmpeg pacman-contrib binutils base-devel

COPY files/build.sh /usr/local/bin/build.sh

RUN chmod +x /usr/local/bin/build.sh

WORKDIR /code

RUN useradd -m build

USER build

ENTRYPOINT ["/usr/local/bin/build.sh"]
