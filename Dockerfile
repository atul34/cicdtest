FROM centos:7.9.2009
RUN yum install -y epel-release && yum install -y nginx && yum install -y git

WORKDIR /etc/nginx

ADD index.html /usr/share/nginx/html/
EXPOSE 80 443
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
