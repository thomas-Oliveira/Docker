FROM debian

LABEL version="1.0.0" description="DBA-docker" maintainer="DBA-control"

ENV PATH_LOCAL=./requirements.txt
ENV PATH_CONTAINER=./home/requirements.txt

COPY PATH_LOCAL PATH_CONTAINER

RUN apt update && apt upgrade
RUN apt install python3 -y
RUN apt install python-pip -y

RUN pip install -r ./home/requirements.txt

VOLUME /ARQUIVOS_DEBIAN_PYTHON_DOCKER/

CMD ["python3"]