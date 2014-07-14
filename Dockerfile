FROM ubuntu:12.04

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install build-essential python-software-properties
RUN add-apt-repository --yes ppa:webupd8team/java

RUN apt-get update
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install oracle-java7-installer
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install git maven supervisor

RUN git clone https://github.com/ksclarke/freelib-djatoka.git /freelib-djatoka
RUN cd /freelib-djatoka && mvn -q install -DskipIntegrationTests -DskipUnitTests && cd

ADD setup.sh /setup.sh
RUN chmod u+x /*.sh

EXPOSE 8888

CMD ["/setup.sh"]
