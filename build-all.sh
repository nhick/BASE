docker build -t cpsot/base DOCKER_BASE/

docker build -t cpsot/websocket DOCKER_WEBSOCKET/

docker build -t cpsot/zookeeper DOCKER_ZOOKEEPER/

docker build -t cpsot/storm DOCKER_STORM/
docker build -t cpsot/storm-nimbus DOCKER_STORM_NIMBUS/
docker build -t cpsot/storm-supervisor DOCKER_STORM_SUPERVISOR/
docker build -t cpsot/storm-ui DOCKER_STORM_UI/

docker build -t cpsot/kafka DOCKER_KAFKA/

docker build -t cpsot/mongo DOCKER_MONGO/
docker build -t cpsot/mongo-api DOCKER_MONGO_API/

docker build -t cpsot/event-dispatcher DOCKER_CAMEL/