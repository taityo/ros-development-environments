#FROM taityo/ros-base
FROM moveit/moveit:melodic-release

COPY ./entry.sh /

WORKDIR /home/ws_moveit/src
RUN apt-get -y update && apt-get -y dist-upgrade && \
    apt-get -y install ros-melodic-catkin python-catkin-tools && \
    apt-get -y install build-essential &&\
    rosdep install -y --from-paths . --ignore-src --rosdistro $ROS_DISTRO && \
    rm -rf /var/lib/apt/lists/*

ENV PYTHONIOENCODING UTF-8
RUN cd .. && \
    catkin config --extend /opt/ros/$ROS_DISTRO --cmake-args -DCMAKE_BUILD_TYPE=Release && \
    catkin build && \
    chmod +x /entry.sh && \
    echo "source /entry.sh" >> ~/.bashrc

ENTRYPOINT [ "/entry.sh" ]
CMD [ "bash" ]