FROM nginx

EXPOSE 1935

RUN apt-get update

RUN apt-get install vim -y

RUN apt-get install nginx-common -y

RUN apt-get install nginx -y

RUN apt-get install libnginx-mod-rtmp  -y

RUN rm /etc/nginx/nginx.conf

COPY nginx.conf /etc/nginx/nginx.conf