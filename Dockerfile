FROM python:3.13.5-slim-bookworm

WORKDIR /app

COPY . /app

RUN apt update -y && apt install awscli -y

CMD ["python", "application.py"]