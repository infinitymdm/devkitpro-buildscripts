#!/bin/sh

#---------------------------------------------------------------------------------
# set env variables
#---------------------------------------------------------------------------------
export DEVKITPRO=$TOOLPATH
export DEVKITPPC=$DEVKITPRO/devkitPPC

#---------------------------------------------------------------------------------
# Install the rules files
#---------------------------------------------------------------------------------
cd $BUILDDIR

tar -xvf $SRCDIR/devkitppc-rules-$DKPPC_RULES_VER.tar.gz
cd devkitppc-rules-$DKPPC_RULES_VER
sed -i 's|/opt/devkitpro/devkitPPC||g' Makefile
mkdir -p $DEVKITPPC
make install DESTDIR=$DEVKITPPC
