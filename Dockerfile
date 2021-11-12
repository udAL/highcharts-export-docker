FROM node:15

ENV HIGHCHARTS_VERSION=8.1.2
ENV HIGHCHARTS_USE_STYLED=NO
ENV HIGHCHARTS_CDN=npm
ENV ACCEPT_HIGHCHARTS_LICENSE=YES

RUN npm install highcharts-export-server -g
RUN node /usr/local/lib/node_modules/highcharts-export-server/build.js

EXPOSE 80
ENTRYPOINT ["highcharts-export-server", "--enableServer", "1", "--port", "80"]
