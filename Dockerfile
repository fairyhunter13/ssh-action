FROM debian:slim
RUN apt-get update && \
  apt-get install -y --no-install-recommends ca-certificates \
  openssh-client \
  sshpass \
  bash && \
  apt autoremove -y

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
