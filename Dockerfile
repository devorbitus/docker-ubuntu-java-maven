#
# Docker Ubuntu Java Maven
#
# https://github.com/silviu-burcea/docker-ubuntu-java-maven
#

FROM silviuburceadev/docker-ubuntu-java
MAINTAINER Silviu BURCEA (silviuburceadev@gmail.com)

# Install Maven
ENV MAVEN_VERSION 3.2.2
ENV M2_HOME /opt/maven
RUN wget http://mirrors.hostingromania.ro/apache.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz -O - | tar -xz && mv apache-maven-$MAVEN_VERSION $M2_HOME
RUN ln -s $M2_HOME/bin/mvn /usr/bin/mvn

# Define default command.
CMD ["bash"]