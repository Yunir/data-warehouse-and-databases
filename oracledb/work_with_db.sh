#!/usr/bin/env bash
set -euxo pipefail

echo 'echo exit | sqlplus / as sysdba @/vagrant/oracle_tables_create' | sudo su - oracle
echo 'echo exit | sqlplus / as sysdba @/vagrant/oracle_tables_insert' | sudo su - oracle
echo '/home/oracle/setPassword.sh ranger' | sudo su - oracle
