FROM debian:jessie
MAINTAINER <n3integration@gmail.com>

RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list' \
    && apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116 \
    && apt-get update -y \
    && apt-get install -y ros-kinetic-ros-base \
    && apt-get install -y python-rosinstall \
    && rosdep init \
    && rosdep update \
    && apt-get clean \
    && echo ". /opt/ros/kinetic/setup.bash" >> ~/.bashrc
