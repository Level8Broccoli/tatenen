FROM ubuntu:22.10

ARG DEBIAN_FRONTEND=noninteractive
ARG USER=ptah

RUN apt-get update \
  && apt-get install -y \
  ansible \
  cargo \
  cmake \
  git \
  python3 \
  zsh \
  && rm -rf /var/lib/apt/lists/*

RUN groupadd -g 10001 $USER \
  && useradd \
  --create-home \
  --shell $(which zsh) \
  --uid 10000 \
  --gid $USER \
  $USER
USER $USER:$USER
WORKDIR /home/$USER

RUN cargo install \
  starship --locked
ENV PATH="$PATH:/home/$USER/.cargo/bin"

COPY ./dotfiles/ /home/$USER

ENTRYPOINT ["/bin/zsh"]
