FROM postgres:16.4

RUN apt-get update && apt-get install -y cron

COPY scripts/backup.sh /usr/local/bin/backup.sh

RUN chmod +x /usr/local/bin/backup.sh

CMD ["/usr/local/bin/backup.sh"]
