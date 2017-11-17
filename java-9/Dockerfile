FROM ubuntu:artful

ARG JAVA_WEBUPD8_VERSION=oracle-java9-installer

RUN apt-get -y update && apt-get install -y software-properties-common curl wget zip unzip git mercurial

RUN add-apt-repository ppa:webupd8team/java -y && \
    echo ${JAVA_WEBUPD8_VERSION} shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

RUN apt-get -y update && apt-get install -y ${JAVA_WEBUPD8_VERSION}

RUN curl -s "https://get.sdkman.io" | bash
RUN source "$HOME/.sdkman/bin/sdkman-init.sh" && \
    sdk install ant && \
    sdk install gradle && \
    sdk install maven && \
    sdk install kotlin && \
    sdk install springboot
