FROM ubuntu
RUN apt-get update && \
    apt-get  install -y jq wget
RUN wget https://api.github.com/repos/idena-network/idena-go/releases/latest && wget -O "/idena" $(jq --raw-output '.assets | map(select(.name | startswith("idena-node-linux"))) | .[0].browser_download_url' "./latest")
RUN chmod +x "/idena" && mkdir "/datadir"
ADD config.json /

ENTRYPOINT ["/idena"]
CMD ["--config=/config.json"]