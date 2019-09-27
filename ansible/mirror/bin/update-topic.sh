#!/bin/sh
# <meta:header>
#   <meta:licence>
#     Copyright (c) 2019, ROE (http://www.roe.ac.uk/)
#
#     This information is free software: you can redistribute it and/or modify
#     it under the terms of the GNU General Public License as published by
#     the Free Software Foundation, either version 3 of the License, or
#     (at your option) any later version.
#
#     This information is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU General Public License for more details.
#
#     You should have received a copy of the GNU General Public License
#     along with this program.  If not, see <http://www.gnu.org/licenses/>.
#   </meta:licence>
# </meta:header>
#

#
# Update our topic names.
topicdate="$(date -d today +%Y%m%d)"
topiclist=(
    "ztf_${topicdate}_programid1"
    "ztf_${topicdate}_programid3_public"
    )

# https://stackoverflow.com/a/11360591
topicfoo="${topiclist[@]}"
topicbar=${topicfoo// /,}


#
# Stop the MirrorMaker process.
docker-compose \
    --file "${HOME}/mirror-compose.yml" \
    down

#
# Update the topic names.
sed -E -i '
    /whitelist/,/]/ {
        /(whitelist|])/ !{
            s/"[^"]*"/"'${topicbar}'"/
            }
        }
    ' mirror-compose.yml

#
# Start the MirrorMaker process.
docker-compose \
    --file "${HOME}/mirror-compose.yml" \
    up --detach \
        tina




