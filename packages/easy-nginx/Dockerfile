FROM nginx

WORKDIR /app/

COPY ./nginx.conf /tmp/

RUN mv /tmp/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]