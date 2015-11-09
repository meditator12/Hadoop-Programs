#!/bin/bash

export PATH=$PATH:/usr/jdk64/jdk1.6.0_31/bin

program=`echo $1 | awk -F "." '{print $1}'`

if [ ! -d "${program}_classes" ]
    then    mkdir ${program}_classes/;
fi

javac -classpath /usr/lib/hadoop/hadoop-common-2.2.0.2.0.6.0-76.jar:/usr/lib/hadoop/client/hadoop-mapreduce-client-core-2.2.0.2.0.6.0-76.jar -d ${program}_classes/ $1

jar -cvf ${program}.jar -C ${program}_classes/ .;



