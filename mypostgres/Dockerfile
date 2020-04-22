FROM postgres:9.3
ENV POSTGRES_USER xc
ENV POSTGRES_PASSWORD xc
ENV POSTGRES_DB xc
RUN mkdir /sampledata
ADD CreateDB.sql /docker-entrypoint-initdb.d/
RUN chmod -R 777 /docker-entrypoint-initdb.d/CreateDB.sql 
ADD data/*.csv /sampledata/
RUN chmod -R 777 /sampledata
