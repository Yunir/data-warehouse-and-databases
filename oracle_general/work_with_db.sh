#!/usr/bin/env bash
set -euxo pipefail

echo 'echo exit | sqlplus / as sysdba @/vagrant/oracle_general_tables_create' | sudo su - oracle

echo '/home/oracle/setPassword.sh ranger' | sudo su - oracle
