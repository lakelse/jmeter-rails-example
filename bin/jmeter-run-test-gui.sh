#!/bin/bash

jmeter \
  --testfile jmeter/view-posts.jmx \
  -Jroot_url=http://localhost:3000 \
  -Jusers_csv_path=./jmeter/users.csv \
  -Jduration=30 \
  -Jloop_count=1

