FROM node

ENV MONGO_DB_USERNAME=admin
ENV MONGO_DB_PWD=QWERTY

RUN mkdir -p docker-testapp

COPY . /docker-testapp

CMD ["node", "/docker-testapp/server.js"]


# to build the image, run the following command in the terminal:

# docker build -t docker-testapp .
