#!/bin/bash
options="jdbc:hive2://localhost:10000/sales_db -n hadoop -d org.apache.hive.jdbc.HiveDriver"
hql_file=/home/cloudera/sales_order_data/analysis.hql
beeline --headerInterval=1000 --silent=true -u ${options} -f ${hql_file}
