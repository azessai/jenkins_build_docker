USER root
RUN groupadd docker && usermod -a -G docker jenkins
USER jenkins
FROM ngnix
RUN sed -i 's/nginx/azeddine/g' /usr/share/nginx/html/index.html
EXPOSE 80
