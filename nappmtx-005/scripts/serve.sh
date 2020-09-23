#!/usr/bin/env bash

#******************************************************************************
# BSD 3-Clause License                                                        * 
#                                                                             * 
# Copyright (c) 2020, Markus Schneider                                        *
# All rights reserved.                                                        * 
#                                                                             *
# Redistribution and use in source and binary forms, with or without          *
# modification, are permitted provided that the following conditions are met: *
#                                                                             *
# 1. Redistributions of source code must retain the above copyright notice,   * 
#    this list of conditions and the following disclaimer.                    *
#                                                                             *
# 2. Redistributions in binary form must reproduce the above copyright        * 
#    notice, this list of conditions and the following disclaimer in the      *
#    documentation and/or other materials provided with the distribution.     *
#                                                                             *
# 3. Neither the name of the copyright holder nor the names of its            *
#   contributors may be used to endorse or promote products derived from      *
#   this software without specific prior written permission.                  * 
#                                                                             *
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" *
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE   *
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE  *
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   *
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         *
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF        *
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR             * 
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,       * 
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR     *
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF      * 
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.                                  *
#******************************************************************************/

#==============================================================================
# SCRIPT:   start
# AUTOHR:   Markus Schneider
# DATE:     2019-06-01
# REV:      1.0.0
# PLATFORM: Noarch
# PURPOSE:  Wrapper script for starting a docker container
#==============================================================================

##----------------------------------------
## CONFIG
##----------------------------------------
CWD=$(pwd)
HOSTNAME="lx1"

##----------------------------------------
## SUB FUNCTION(S)
##----------------------------------------
start() {
   docker run -h $HOSTNAME -dit -p $APP_PORT:$APP_PORT -e GITHUB_CLIENT_ID="$GITHUB_CLIENT_ID" -e APP_PORT="$APP_PORT" -e GITHUB_CALLBACK_URL="$GITHUB_CALLBACK_URL" --name $NAME $IMAGE
}

##----------------------------------------
## MAIN
##----------------------------------------
main() {
   start "$@"
}

start "$@"
