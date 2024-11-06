FROM postgres:16.4

RUN apt-get update && apt-get install -y cron

COPY scripts/restore.sh /usr/local/bin/restore.sh

RUN chmod +x /usr/local/bin/restore.sh

CMD ["/usr/local/bin/restore.sh"]
