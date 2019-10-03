FROM python:3-slim

RUN pip install mkdocs
RUN mkdir -p /data

WORKDIR /data
VOLUME [ "/data" ]
EXPOSE 8000

ENTRYPOINT [ "mkdocs" ]