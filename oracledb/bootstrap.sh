
if [ -d "tmp" ]
then
  pushd tmp/vagrant-projects/OracleDatabase/18.4.0-XE
else
  mkdir tmp
  cd tmp
  git clone https://github.com/oracle/vagrant-projects
  cd ..
  cp oracle_* tmp/vagrant-projects/OracleDatabase/18.4.0-XE
  cp work_with_db.sh tmp/vagrant-projects/OracleDatabase/18.4.0-XE
  pushd tmp/vagrant-projects/OracleDatabase/18.4.0-XE
fi

vagrant destroy -f && vagrant up
vagrant ssh -c '/vagrant/work_with_db.sh'
popd