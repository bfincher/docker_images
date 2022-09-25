from jenkins/jenkins:lts-jdk11

USER root
#run apt-get update && \
#    apt-get --no-install-recommends -y install unzip git wget openjdk-11-jdk-headless openjdk-17-jdk-headless && \
run apt-get update && \
    apt-get --no-install-recommends -y install sudo && \
    echo "jenkins ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/jenkins && \
    sed -i 's/1000/1014/g' /etc/passwd && \
    sed -i 's/1000/1014/g' /etc/group && \
    groupadd -g 117 docker && \
    usermod -aG docker jenkins

USER jenkins
run  newgrp docker && newgrp jenkins # necessary for jenkins to actually be a member of docker in this session

volume /var/jenkins_home
volume /var/lib/jenkins

expose 8080
expose 8989
expose 50000
