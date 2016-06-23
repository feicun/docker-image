FROM python:2.7

RUN mkdir -p /app
WORKDIR /app

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

RUN echo "Hello World"

EXPOSE 8888
ENTRYPOINT ["docker-entrypoint.sh"]
CMD [""]
