docker container stop idena-node
docker container rm idena-node
docker build . -t idena-node
docker run -d -p 9009:9009 -v /root/idena/datadir:/datadir --name idena-node --restart=always idena-node