FROM python:3.8.5-slim

RUN mkdir /app

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -r requirements.txt

COPY ./ /app

EXPOSE 5000

CMD flask run --host=0.0.0.0 --port=5000

