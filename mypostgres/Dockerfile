FROM postgres:9.3
ENV POSTGRES_USER xc
ENV POSTGRES_PASSWORD xc
ENV POSTGRES_DB xc
RUN mkdir /sampledata
ADD CreateDB.sql /docker-entrypoint-initdb.d/
ADD data/*.csv /sampledata/
