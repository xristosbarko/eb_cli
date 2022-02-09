FROM ubuntu:latest

SHELL ["/bin/bash", "-c"]

RUN apt update && apt install git python3 pip virtualenv vim nano -y

RUN git clone https://github.com/aws/aws-elastic-beanstalk-cli-setup.git

RUN ln -s /usr/bin/python3 /usr/bin/python

RUN python ./aws-elastic-beanstalk-cli-setup/scripts/ebcli_installer.py

RUN echo 'export PATH="/root/.ebcli-virtual-env/executables:$PATH"' >> ~/.bash_profile
