#!/bin/bash

set -x

logTime(){

  echo TIMER: "$@" at `date +"%m-%d-%y %H:%M:%S"`
}

logdir=$1
db=$2
engine=$3


for line in query3.sql query27.sql query18.sql query20.sql query43.sql
do
	logTime starting $line
	sec=_`date +%M%S`
	query_log=$logdir/tmp_$line$sec
	#hive -e "set hive.execution.engine=$engine; set mapred.job.queue.name=default; use tpcds_bin_partitioned_orc_${db} ;source $line" &> $query_log &
	hive -v -i 00_query.sql -f $line &>$query_log 
	#hive -v -i 00_query.sql -f query_y.sql & > $query_log 
	#echo $line  `grep -i "time taken" $query_log | tail -1 |awk '{print $3}'`>>$logdir/tpcds_query_results_${db}_${engine}
	logTime  finished $line
done

end=`date +%Y%m%d%H_%M%S`
