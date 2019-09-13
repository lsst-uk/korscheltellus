#
# Copyright (c) 2018, ROE (http://www.roe.ac.uk/)
# All rights reserved.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

FROM korscheltellus/fedora:2019.09.11
MAINTAINER Dave Morris <docker-admin@metagrid.co.uk>

#
# Install the SSH client.
RUN dnf install -y openssh-clients

#
# Install the Ansible client.
# https://docs.ansible.com/ansible/2.4/intro_installation.html#latest-release-via-dnf-or-yum
RUN dnf install -y ansible

#
# Install the jq JSON parser.
# https://stedolan.github.io/jq/
RUN dnf install -y jq

#
# Install the ipcalc tools.
# http://jodies.de/ipcalc
RUN dnf install -y ipcalc

#
# Add our util scripts.
#COPY bin /usr/local/bin/
#RUN chmod a+x /usr/local/bin/*.sh

