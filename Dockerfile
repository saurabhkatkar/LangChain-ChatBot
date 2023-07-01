ARG BASE_CONTAINER=jupyter/minimal-notebook
FROM $BASE_CONTAINER
LABEL author="Saurabh Katkar"
USER root
RUN pip3 install --upgrade pip
RUN pip3 install --upgrade setuptools
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
USER $NB_UID
