FROM ngnix
LABEL name="test-vue-front-cicd"
LABEL version="1.0"
COPY ./dist /usr/share/ngnix/html
COPY ./vue-front.conf /etc/ngnix/conf.d
EXPOSE 80