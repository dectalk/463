#*******************************************************
# File: build_rts.sh
# Created on 12/09/03
#
# Functionality: Creates complete demos for Linux
# 
# Run from ad/kitosf/kitbld
#
#********************************************************
# Modification History
# ------------ -------
# 001   NAL  05/30/00   Changed demo filenames
#
#********************************************************

OS_VER=`uname -r`
VERSION=$3

cd ../$OS_VER/src/
# $1 is release "R002"
# $2 is processor "intel"
# $3 is version "4.63"


echo Making debug $VERSION $1 $2
tar cvf ../output/DECtalk_"$VERSION"_"$1"_"$2"_debug.tar DECtalk_"$VERSION"
gzip ../output/DECtalk_"$VERSION"_"$1"_"$2"_debug.tar 

echo Making release $VERSION $1 $2
cd DECtalk_"$VERSION"/bin
strip *
cd ../lib
strip libtts*
cd ../X11/bin
strip *
cd ../../../
tar cvf ../output/DECtalk_"$VERSION"_"$1"_"$2"_release.tar DECtalk_"$VERSION"
gzip ../output/DECtalk_"$VERSION"_"$1"_"$2"_release.tar 


