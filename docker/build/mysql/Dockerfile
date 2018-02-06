FROM mysql:5.6
MAINTAINER muktevigk@handbookinc.com

EXPOSE 3306
ADD ./schema/schema.sql /docker-entrypoint-initdb.d
