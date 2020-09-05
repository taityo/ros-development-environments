FROM taityo/ros-base

RUN apt-get update && \
    apt-get install -y ros-melodic-desktop-full

ENV DEFAULT_USER=docker \
    DEFAULT_PASSWD=docker

RUN echo "ALL ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/ALL && \
    chmod u+s /usr/sbin/useradd && \
    chmod u+s /usr/sbin/groupadd

COPY ./set_user.sh /
RUN chmod +x /set_user.sh

CMD [ "/set_user.sh" ]