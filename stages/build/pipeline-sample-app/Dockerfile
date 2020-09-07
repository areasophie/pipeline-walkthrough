FROM python:3.8.5-slim

RUN mkdir /app

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -r requirements.txt

COPY ./ /app

EXPOSE 5000

CMD exec gunicorn app:app --worker-tmp-dir /dev/shm  -c gunicorn_settings.py