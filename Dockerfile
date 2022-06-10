FROM ubi7/ubi:7.7 

LABEL description="This is a custom httpd container image" 

MAINTAINER mike

RUN yum install -y httpd && yum clean all 

EXPOSE 80  

RUN echo "site en construcion par etu42925" > /var/www/html/index.html 

USER apache 

ENTRYPOINT ["/usr/sbin/httpd"] 

CMD ["httpd", "-D", "FOREGROUND"]
