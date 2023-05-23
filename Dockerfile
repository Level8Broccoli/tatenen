FROM ubuntu:22.10

ARG DEBIAN_FRONTEND=noninteractive
ARG USER=ptah
ARG SCRIPTDIR=/tmp/install

RUN apt-get update \
  && apt-get install -y \
  ansible \
  cargo \
  cmake \
  fzf \
  neovim \
  git \
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

COPY --chown=$USER ./home/ /home/$USER

COPY --chown=$USER ./install/ $SCRIPTDIR
RUN SCRIPTDIR=$SCRIPTDIR . $SCRIPTDIR/install-all.zsh 

ENTRYPOINT ["/usr/bin/zsh"]
