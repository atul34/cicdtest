FROM docker-registry.flavoursofindia.eu:5000/base/centos7.7:v1
RUN yum install -y epel-release && yum install -y nginx && yum install -y git

WORKDIR /etc/nginx

ADD index.html /usr/share/nginx/html/
EXPOSE 80 443
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
