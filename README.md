# docker-testapp


## setting up mongo and mogo-express

## built mongo container

docker run -d \
> -p27017:27017 \
> --name mongo \
> --network mongo-network \
> -e MONGO_INITDB_ROOT_USERNAME=admin \
> -e MONGO_INITDB_ROOT_PASSWORD=qwerty \
> mongo


## built mongo-express container

docker run -d \
> -p 8081:8081 \
> --name mongo-express \
> --network mongo-network \
> -e ME_CONFIG_MONGODB_ADMINUSERNAME=admin \
> -e ME_CONFIG_MONGODB_ADMINPASSWORD=qwerty \
> -e ME_CONFIG_MONGODB_URL="mongodb://admin:qwerty@mongo:27017" \
> mongo-express
