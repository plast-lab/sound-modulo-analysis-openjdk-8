#!/bin/bash
#
# Copyright (c) 2012, 2013, Oracle and/or its affiliates. All rights reserved.
# DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
#
# This code is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License version 2 only, as
# published by the Free Software Foundation.
#
# This code is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
# version 2 for more details (a copy is included in the LICENSE file that
# accompanied this code).
#
# You should have received a copy of the GNU General Public License version
# 2 along with this work; if not, write to the Free Software Foundation,
# Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
#
# Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
# or visit www.oracle.com if you need additional information or have any
# questions.
#

# This script is processed by configure before it's usable. It is run from
# the root of the build directory.


##########################################################################################
# Substitutions from autoconf

LEGACY_BUILD_DIR=linux-amd64

OPENJDK_TARGET_OS="linux"
OPENJDK_TARGET_CPU="x86_64"

AWK="gawk"
CAT="/bin/cat"
CMP="/usr/bin/cmp"
CP="/bin/cp"
CUT="/usr/bin/cut"
DIFF="/usr/bin/diff"
DUMPBIN=" "
EXPR="/usr/bin/expr"
FILE="/usr/bin/file"
FIND="/usr/bin/find"
GREP="/bin/grep"
JAVAP=" /usr/lib/jvm/jdk1.7.0_80/bin/javap"
LDD="/usr/bin/ldd"
MKDIR="/bin/mkdir"
NAWK="/usr/bin/nawk"
NM="/usr/bin/nm"
OBJDUMP="/usr/bin/objdump"
OTOOL="true"
PRINTF="/usr/bin/printf"
READELF="/usr/bin/readelf"
RM="/bin/rm -f"
SED="/bin/sed"
SORT="/usr/bin/sort"
STAT="/usr/bin/stat"
STRIP="/usr/bin/strip -g"
TEE="/usr/bin/tee"
UNIQ="/usr/bin/uniq"
UNPACK200=" /usr/lib/jvm/jdk1.7.0_80/bin/unpack200"
UNZIP="/usr/bin/unzip"

SRC_ROOT="/home/anantoni/Development/test9"

if [ "$OPENJDK_TARGET_OS" = "windows" ]; then
  PATH=""
fi

# Now locate the main script and run it.
REAL_COMPARE_SCRIPT="$SRC_ROOT/common/bin/compare.sh"
if [ ! -e "$REAL_COMPARE_SCRIPT" ]; then
  echo "Error: Cannot locate compare script, it should have been in $REAL_COMPARE_SCRIPT"
  exit 1
fi

. "$REAL_COMPARE_SCRIPT" "$@"
