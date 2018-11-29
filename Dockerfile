FROM centos

MAINTAINER xyz@test.com

ADD sample.repo /etc/yum.repos.d/sample.repo

RUN yum install httpd -y

ADD index.html /var/www/html/index.html

EXPOSE 80

CMD ["httpd","-D","FOREGROUND"]
