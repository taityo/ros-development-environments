#!/bin/bash
set -e

# setup ros environment
source /opt/ros/$ROS_DISTRO/setup.bash
source /home/catkin_ws/devel/setup.bash
source /home/ws_moveit/devel/setup.bash
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:/home/catkin_ws:/home/ws_moveit
export ROS_WORKSPACE=$WORKDIR

exec "$@"