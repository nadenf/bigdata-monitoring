#!/bin/csh -f
#  Copyright 2012 TripAdvisor, LLC
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#
# checks that the hive server is running
#

set cnt=`ps aux | grep hiveserver | grep -v grep | wc -l`

if ($cnt) then
    echo "OK - hive ok"
    exit 0
else
    echo "CRITICAL - hive hiveserver not running"
    exit 2
endif
