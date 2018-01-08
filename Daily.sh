#/bin/mysql/sh

#NOW=$(date +"%F")
#NOW=$(date +"%T")
#ssh nsa@10.10.1.2
echo "Please take a file database"
mysql -u root -p -e STATUS |  grep -i uptime
mysql -u "root" "-pkrishnas"   << END_CMDS
show databases
END_CMDS
export CDPATH="/home/raghavemdra/Desktop/"
tar xvjf Nischint_01-05-2018-0100.tar.bz2
#vim /home/raghavemdra/Desktop/Nischint-mobily/Nischint_01-02-2017-0100/ip-172-31-25-149-nischint_mobily-01-02-2017-0100.sql
export CDPATH="/home/raghavemdra/Desktop/Nischint_01-03-2018-0100"
#vim /home/raghavemdra/Desktop/Nischint-mobily/Nischint_12-26-2017-0100/ip-172-31-25-149-nischint_mobily-12-26-2017-0100.sql
sed  's/nischint_mobily/nischint_mobily/' /home/raghavemdra/Desktop/Nischint_01-05-2018-0100/ip-172-31-25-149-nischint_mobily-01-05-2018-0100.sql

mysql -u "root" "-pkrishnas"   << END_CMDS
drop database nischint_mobily
END_CMDS

mysql -u "root" "-pkrishnas" << END_CMDS
create database nischint_mobily
END_CMDS

mysql -u "root" "-pkrishnas" "nischint_mobily" < "/home/raghavemdra/Desktop/Nischint_01-05-2018-0100/ip-172-31-25-149-nischint_mobily-01-05-2018-0100.sql"
#export CDPATH="/home/raghavemdra/Desktop/Nischint_12-26-2017-0100"
#export JAVA_PATH=/usr/bin/java 
export CDPATH="/home/raghavemdra/Desktop"
java -cp "mysql-connector-java-5.1.23-bin.jar:commons-codec-1.3.jar:." GenerateNischintMobilyReports
