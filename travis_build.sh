#!/bin/sh

SBT_LOCATION="https://raw.githubusercontent.com/paulp/sbt-extras/master/sbt"
wget $SBT_LOCATION
export PATH=$PATH:`pwd`

# build scala first
cd sagemaker-spark-sdk
sbt test package

# test pyspark
cd ../sagemaker-pyspark-sdk
tox
