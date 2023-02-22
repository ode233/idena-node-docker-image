docker container stop idena
docker container rm idena
docker build . -t idena
docker run -d -p 9009:9009 -v /root/idena/datadir:/datadir --name idena --restart=always idena