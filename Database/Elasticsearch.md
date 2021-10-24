To pull a elasticsearch docker image: - docker pull docker.elastic.co/elasticsearch/elasticsearch:7.15.1

To start elasticsearch with single node - docker run -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.15.1

https://github.com/dockerfile/elasticsearch

docker build -t="dockerfile/elasticsearch" github.com/dockerfile/elasticsearch)

Usage
docker run -d -p 9200:9200 -p 9300:9300 dockerfile/elasticsearch
