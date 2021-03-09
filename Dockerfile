FROM python:3.7.6

MAINTAINER ARVIND devops0123@gmail.com

WORKDIR /app

COPY requirements.txt /app

RUN pip3 install -r requirements.txt

COPY manage.py /app

CMD [ "py manage.py makemigrations", "py manage.py migrate", "py manage.py runserver" ]


