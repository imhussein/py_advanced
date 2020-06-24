FROM python:alpine
LABEL maintainer='Mohamed'
ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app
COPY ./packages.txt ./
RUN pip install -r packages.txt
COPY . .
RUN adduser -D user
USER user