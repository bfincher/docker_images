from bfincher/devenv:ubuntu

run apt-get update && \
    apt-get --no-install-recommends -y install curl unzip openssh-client psmisc net-tools git && \
    curl -o jenkins.deb -L "https://pkg.jenkins.io/debian-stable/binary/jenkins_2.190.3_all.deb" && \
    dpkg -i jenkins.deb && \
    rm jenkins.deb

volume /var/jenkins_home
volume /var/lib/jenkins

copy root/ /

expose 8080
expose 50000
