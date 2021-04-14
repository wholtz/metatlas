FROM mysql:5.7.33 as loader

ARG DUMP_DATE=2021-03-26
ENV MYSQL_ROOT_PASSWORD=mypw

COPY meta_atlas.dump.$DUMP_DATE.sql /docker-entrypoint-initdb.d/dump.sql

RUN echo "(sleep 5 && mysqladmin shutdown --user=root --password=$MYSQL_ROOT_PASSWORD) &" > /docker-entrypoint-initdb.d/shutdown.sh

RUN docker-entrypoint.sh mysqld

#####################################################3
FROM mysql:5.7.33

COPY --from=loader /var/lib/mysql /var/lib/mysql


