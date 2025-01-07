# Base Image 
FROM python:latest

# Author: Hamsa
LABEL maintainer="Hamsa Moringa school <hamsa.adan1@student.moringaschool.com"

# install redis driver for python and the redis mock
RUN pip install redis && pip install mockredispy

#Copy the test and source to the Docker image 
ADD src/ /src/

#Change the working directory to /src/
WORKDIR /src/

#Make unittest as the default executionb
ENTRYPOINT python3 -m unittest
