# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster
COPY backend_main_django/requirements.txt /opt/
WORKDIR /opt/
RUN pip install -r requirements.txt
COPY ./backend_main_django/ .
CMD [ "python3", "manage.py", "runserver" ]