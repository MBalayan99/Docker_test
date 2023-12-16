FROM ubuntu:latest

RUN apt-get update && \
    apt-get install  nginx -y

COPY nginx.conf /etc/nginx/sites-enabled/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
