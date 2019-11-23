from bfincher/ubuntu-base:bionic

run apt-get update && \
    apt-get --no-install-recommends -y install curl unzip openssh-client && \
    curl -o gradle.zip -L "https://services.gradle.org/distributions/gradle-5.6.2-bin.zip" && \
    unzip -d /opt gradle.zip && \
    ln -s /opt/gradle-5.6.2/bin/gradle /usr/bin/gradle && \
    rm gradle.zip && \
    curl -o jenkins.deb -L "https://pkg.jenkins.io/debian-stable/binary/jenkins_2.190.3_all.deb" && \
    apt-get --no-install-recommends -y install daemon psmisc net-tools default-jre git && \
    dpkg -i jenkins.deb && \
    rm jenkins.deb

volume /var/jenkins_home
volume /var/lib/jenkins

copy root/ /

expose 8080
expose 50000
