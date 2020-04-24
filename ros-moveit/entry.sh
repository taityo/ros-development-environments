#!/bin/bash
set -e

# setup ros environment
source /opt/ros/$ROS_DISTRO/setup.bash
source /home/ws_moveit/devel/setup.bash
#export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH
export ROS_WORKSPACE=/home/ws_moveit

exec "$@"