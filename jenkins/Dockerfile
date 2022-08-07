from jenkins/jenkins:lts-jdk11

USER root
run apt-get update && \
    apt-get --no-install-recommends -y install unzip git wget openjdk-11-jdk-headless openjdk-17-jdk-headless && \
    sed -i 's/1000/1014/g' /etc/passwd && \
    sed -i 's/1000/1014/g' /etc/group

USER jenkins

volume /var/jenkins_home
volume /var/lib/jenkins

expose 8080
expose 8989
expose 50000
