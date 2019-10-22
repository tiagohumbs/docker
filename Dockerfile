FROM python:3.6
LABEL maintainer 'Teste IFTM'

RUN useradd www && \
mkdir /app && \
mkdir /log && \
chown www /log

ADD run.py app/run.py
ADD index.html app/index.html

USER www
VOLUME /log
WORKDIR /app
EXPOSE 8888

ENTRYPOINT ["/usr/local/bin/python"]
CMD ["run.py"]
