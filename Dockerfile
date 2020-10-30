FROM node

LABEL maintainer="Robson Carvalho"

RUN apt-get update && \
    apt-get install -y git

RUN git config --global user.name "Robson01jc"
RUN git config --global user.email "robson01jc@gmail.com"

WORKDIR "/app"
RUN git clone https://github.com/Robson01jc/ecomm.git 

WORKDIR "/app/ecomm"
RUN npm init

COPY ./Dockerfile .

CMD ["tail", "-f", "/dev/null"]
