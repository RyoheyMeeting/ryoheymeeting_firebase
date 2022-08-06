FROM node:16.14.2

RUN apt-get update -y

RUN apt-get install -y openjdk-11-jre-headless

ENV APP_ROOT /firebase
WORKDIR ${APP_ROOT}

ADD ./package.json ${APP_ROOT}/package.json
ADD ./yarn.lock ${APP_ROOT}/yarn.lock
RUN yarn install

CMD ["yarn", "start"]
