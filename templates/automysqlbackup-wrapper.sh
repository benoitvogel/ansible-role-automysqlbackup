#!/usr/bin/env bash
#
# {{ ansible_managed }}
#
NOW=`date +"%Y-%m-%d_%Hh%Mm"`
echo `/usr/local/bin/automysqlbackup` > {{ automysqlbackup_log_dir }}/backup-$NOW.log \
&& echo $NOW > {{ automysqlbackup_backup_dir }}/automysqlbackup_status