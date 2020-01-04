FROM python:3.8.0

ENV APP_ROOT /app
WORKDIR $APP_ROOT

RUN date > index.html

EXPOSE 80

CMD [ "python", "-m", "http.server", "80" ]