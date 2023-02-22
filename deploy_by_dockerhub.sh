docker container stop idena-node
docker container rm idena-node
docker pull ode233/idena-node
docker run -d -p 9009:9009 -v /root/idena/datadir:/datadir --name idena-node --restart=always ode233/idena-node