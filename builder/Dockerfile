FROM ubuntu:18.04
LABEL maintainer="ahmednour1024@gmail.com"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install nano vim ssh build-essential openjdk-11-jre python3 python3-pip -y
RUN sed -i 's/#PubkeyAuthentication/PubkeyAuthentication/g' /etc/ssh/sshd_config && \
    sed -i 's/#PasswordAuthentication/PasswordAuthentication/g' /etc/ssh/sshd_config && \
    sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config

RUN useradd -m -d /home/devel -s /bin/bash devel
COPY devel_passwd.txt /devel_passwd.txt
COPY entry_point.sh /entry_point.sh
WORKDIR /home/devel
ENTRYPOINT [ "sh", "/entry_point.sh" ]
CMD ["tail", "-f", "/dev/null"]

