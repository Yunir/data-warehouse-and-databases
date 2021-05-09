# data-warehouse-and-databases

## Prerequisites
- VirtualBox
- Vagrant

## How to run
Run command:
```shell
$ vagrant up
```
If machine already created, use:
```shell
vagrant destroy -f && vagrant up  
```
To connect to machine, use:
```shell
vagrant ssh
```

## Databases
| DB | IP | DB name | Login | Password |
| --- | --- | --- | --- | --- | 
| PostgreSQL | localhost:15432 | dwdb | manager | ranger |
| MySQL | localhost:13306 | dwdb | root | root |
| MongoDB | localhost:27017 | dwdb | manager | ranger |
| OracleDB | localhost:1521 | / | SYSTEM | ranger |
