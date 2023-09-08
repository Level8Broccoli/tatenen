FROM debian:12.1

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y \
  ansible \
  neovim \
  tmux \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /root/
COPY --chown=root ./home/ /root/

ENTRYPOINT ["/bin/bash"]
