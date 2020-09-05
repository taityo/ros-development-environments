FROM ros:melodic-ros-base-stretch

COPY ./entry.sh /
RUN chmod +x /entry.sh && \
    sudo apt-get update && sudo apt-get -y install build-essential &&\
    mkdir -p /home/catkin_ws/src && \
    cd /home/catkin_ws/src && \
    bash -c "source /opt/ros/$ROS_DISTRO/setup.bash; catkin_init_workspace" && \
    cd /home/catkin_ws && \
    bash -c "source /opt/ros/$ROS_DISTRO/setup.bash; catkin_make" && \
    echo "source /entry.sh" >> ~/.bashrc

WORKDIR /home/catkin_ws/src/
ENTRYPOINT [ "/entry.sh" ]
CMD [ "bash" ]