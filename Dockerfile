FROM alpine
WORKDIR /run
RUN apk update \
  && apk upgrade \
  && apk add wget
RUN wget "https://github.com/nwalke/tautulli-exporter/releases/download/v0.1.0/tautulli_exporter-linux-amd64" -o /run/exporter
RUN chmod +x /run/exporter
ENTRYPOINT ["/run/exporter"]
