FROM python:3.8.0

ENV APP_ROOT /app
WORKDIR $APP_ROOT

RUN date > index.html

EXPOSE 8080

CMD [ "python", "-m", "http.server", "8080" ]