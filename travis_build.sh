#!/bin/sh

SBT_LOCATION="https://github.com/sbt/sbt/releases/download/v1.0.3/sbt-1.0.3.tgz"

wget $SBT_LOCATION
tar -xf sbt-1.0.3.tgz
export PATH=`pwd`/sbt/bin/:$PATH
which sbt
echo $PATH

ls -l
# build scala first
pushd sagemaker-spark-sdk
sbt test package
popd
