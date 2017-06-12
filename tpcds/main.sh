#!/bin/bash
#set -x

logTime(){

  echo TIMER: "$@" at `date +"%m-%d-%y %H:%M:%S"`
}
report=reports.sh
notes=se2
app_dir=/home/hive/hive-testbench-hive14/sample-queries-tpcds
db=2
poll_id=_`date +%Y%m%d%H_%M%S`
engine=tez
logdir=${app_dir}/log/${engine}_${db}_${notes}_$poll_id
mkdir -p $logdir
logTime starting reports
sh $report $logdir $db $engine > $logdir/drive.log 
logTime finished reports