FROM python:3.12
COPY . /src
WORKDIR /src
EXPOSE 8501
ENTRYPOINT ["docker","compose","up"]