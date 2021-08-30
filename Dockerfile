FROM ubuntu:latest
MAINTAINER Sebastien_Patoche "sardine@serviette.com"

RUN apt-get update -y
RUN apt-get install -y python
RUN apt-get install -y python3-pip

COPY . .
RUN pip3 install -r requirements.txt


ENTRYPOINT ["python3"]
CMD ["../flask-docker.py"]
