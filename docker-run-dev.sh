export $(egrep -v '^#' docker/.env | xargs)

docker build --tag prophetable --file docker/Dockerfile.dev . && \
    docker run --rm \
    -v $VOLUME:/data \
    --env-file docker/.env \
    --name=pm \
    prophetable