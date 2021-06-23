FROM nginx:1.19.2-alpine

RUN rm -f /etc/nginx/conf.d/*

WORKDIR /etc/nginx/conf.d

RUN apk update && \
  apk add --no-cache \
  tzdata && \
  cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime


COPY nginx.conf ./

CMD /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf
