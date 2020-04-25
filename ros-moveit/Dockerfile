FROM taityo/ros-base
#FROM moveit/moveit:melodic-release

COPY ./entry.sh /

ENV WORKDIR=/home/catkin_ws/src
RUN mkdir -p /home/ws_moveit/src && \
    cd /home/ws_moveit/src && \
    apt-get -y update && apt-get -y dist-upgrade && \
    apt-get install -y ros-$ROS_DISTRO-moveit-* && \
    apt-get install -y ros-melodic-catkin python-catkin-tools && \
    apt-get install -y build-essential &&\
    rosdep install -y --from-paths . --ignore-src --rosdistro $ROS_DISTRO && \
    rm -rf /var/lib/apt/lists/*

ENV PYTHONIOENCODING UTF-8
RUN cd /home/ws_moveit/ && \
    catkin config --extend /opt/ros/$ROS_DISTRO --cmake-args -DCMAKE_BUILD_TYPE=Release && \
    catkin build && \
    chmod +x /entry.sh && \
    echo "source /entry.sh" >> ~/.bashrc

ENTRYPOINT [ "/entry.sh" ]
CMD [ "bash" ]