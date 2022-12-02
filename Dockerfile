FROM		registry.access.redhat.com/ubi7/ubi
MAINTAINER	Erik Kostka <usul.hu@gmail.com>
RUN		yum install -y httpd && \
		yum clean all
EXPOSE		80
COPY		./src/	 /var/www/html/
USER		root
CMD		["httpd", "-D", "FOREGROUND"]
