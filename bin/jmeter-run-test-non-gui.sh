#!/bin/bash

DATE=$( date +%Y%m%d-%H%M%S )

REPORT_FOLDER=tmp/jmeter-reports/$DATE

mkdir -p $REPORT_FOLDER

jmeter \
  --nongui \
  --testfile jmeter/view-posts.jmx \
  -Jroot_url=http://localhost:3000 \
  -Jusers_csv_path=./jmeter/users.csv \
  -Jthread_count=10 \
  -Jduration=30 \
  --reportatendofloadtests \
  --reportoutputfolder $REPORT_FOLDER \
  --logfile $REPORT_FOLDER/report.log

