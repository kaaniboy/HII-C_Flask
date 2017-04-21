FROM ubuntu:latest
MAINTAINER Kaan Aksoy "kaanaksoyaz@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt

RUN python create_loinc_db.py

EXPOSE 5000

ENTRYPOINT ["python"]
CMD ["server.py"]
