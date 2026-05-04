FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/*
COPY ./index.html /usr/share/nginx/html/
RUN sed -i 's/listen       80;/listen 8081;/g' /etc/nginx/conf.d/default.conf
EXPOSE 8081
CMD ["nginx", "-g", "daemon off;"]
