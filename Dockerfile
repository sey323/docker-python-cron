FROM python:latest

RUN pip install --upgrade pip
RUN pip install tensorflow

RUN apt-get update
RUN apt-get install -y cron

# cron設定ファイルの移動
ADD python-cron /etc/cron.d/python-cron
RUN chmod 0644 /etc/cron.d/python-cron

ADD ./ /
RUN chmod +x /script.sh /init.sh

# CMD /usr/sbin/cron -f
CMD /init.sh
