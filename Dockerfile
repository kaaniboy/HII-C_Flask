FROM ubuntu:16.10
MAINTAINER Austin Michne "austinmichne@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python3-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt

EXPOSE 5000

CMD ["python3", "server.py"]
