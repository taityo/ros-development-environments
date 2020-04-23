#!/bin/bash
set -e

# setup ros environment
source /opt/ros/$ROS_DISTRO/setup.sh
source /home/catkin_ws/devel/setup.sh
export ROS_PACKAGE_PATH=\${ROS_PACKAGE_PATH}:/home/catkin_ws
export ROS_WORKSPACE=/home/catkin_ws

exec "$@"