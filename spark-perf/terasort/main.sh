#!/bin/bash
#set -x

logTime(){

  echo TIMER: "$@" at `date +"%m-%d-%y %H:%M:%S"`
}
notes='__'
app_dir=~/hdp/spark-perf/terasort/
poll_id=_`date +%Y%m%d%H_%M%S`
logdir=${app_dir}/log/${engine}_${notes}_$poll_id
mkdir -p $logdir
logTime starting reports
sh ${app_dir}/bin/teragensort.sh > $logdir/teralog.txt
logTime finished reports