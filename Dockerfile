FROM node:14

RUN apt-get update && apt-get -y install --no-install-recommends jq icnsutils graphicsmagick tzdata

RUN mkdir -p /app
WORKDIR /app
COPY ./* /app/

RUN npm install

RUN ls -la /app/

RUN npm run build

RUN npm run package:linux
