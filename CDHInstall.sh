#!/bin/bash
#运行前先配置互信,修改ip、hostname、网关

#定义hosts
declare -A map=(["192.168.1.115"]="cdh115" ["192.168.1.116"]="cdh116" ["192.168.1.117"]="cdh117" ["192.168.1.118"]="cdh118" ["192.168.1.119"]="cdh119")
#定义主节点
master=192.168.1.115
#定义网关
getway=192.168.0.2

#创建密钥
function createKey() {
for i in ${!map[@]}
do
echo 当前机器为 $i
ssh root@$i "if [ ! -d "~/.ssh" ];then
mkdir ~/.ssh
else
echo 文件夹已经存在
fi
chmod  700 ~/.ssh 
cd ~/.ssh 
ssh-keygen -t rsa"
done
} 

#整合公钥文件
function integration() {
#将每台的key添加到当前机器的authorized_keys
for i in ${!map[@]}
do 
ssh $i cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
done
#将这个authorized_keys分发到每台机器
for i in ${!map[@]}
do
scp ~/.ssh/authorized_keys root@$i:~/.ssh/
done
}

#设置hostname
function setHostname() {
for i in ${!map[@]}
do 
ssh root@$i "hostnamectl set-hostname ${map[$i]}"
done

}

#给每台机器配置hosts,分别追加
function hostsAdd() {
cat  > /etc/hosts <<EOF
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost localhost.localdomain localhost6 localhost6.localdomain6

EOF

for i in ${!map[@]}
do
cat >> /etc/hosts <<EOF
$i ${map[$i]}
EOF
done

for i in ${!map[@]}
do 
scp /etc/hosts root@$i:/etc/
done

}

#修改每台主机的/etc/sysconfig/network文件，分别追加,并且将hosts文件传到每一个机器
function netWorkAdd() {
for i in ${!map[@]}
do 
echo ip: $i   hostname:${map[$i]}
ssh root@$i "cat >> /etc/sysconfig/network <<EOF
HOSTNAME=${map[$i]}
EOF"
scp /etc/hosts root@$i:/etc
done
}

##关闭防火墙
function fireClose() {
for i in ${!map[@]}
do
ssh root@$i "systemctl stop firewalld \
&& systemctl disable firewalld \
&& systemctl status firewalld"
done 

}

#每台主机关闭Selinux
function selinuxClose() {
for i in ${!map[@]} 
do 
ssh root@$i "setenforce 0"  
done
#先修改这台机器的,然后拷贝过去
cat > /etc/selinux/config <<EOF
SELINUX=permissive
SELINUXTYPE=targeted
EOF
 
for i in ${!map[@]}
do 
scp /etc/selinux/config root@$i:/etc/selinux/
done
}

#配置ntp服务
function ntpConfig() {
#先配置主节(192.168.1.26  ztdata-0001)点/etc/ntp.conf
cat > /etc/ntp.conf << EOF
driftfile /var/lib/ntp/drift
 
restrict default nomodify notrap nopeer noquery

#当前节点IP地址
restrict $1 nomodify notrap nopeer noquery
restrict 127.0.0.1 
restrict ::1
 
#集群所在网段的网关（Gateway），子网掩码（Genmask）
restrict $2 mask 255.255.255.0 nomodify notrap
 
server 127.127.1.0
Fudge 127.127.1.0 stratum 10
includefile /etc/ntp/crypto/pw
keys /etc/ntp/keys
disable monitor
EOF
num=$1
echo ${num##*.}
for i in ${!map[@]}
do 
if [ ${i##*.} != ${num##*.} ];then 
echo $i
ssh root@$i "cat > /etc/ntp.conf <<EOF
ftfile /var/lib/ntp/drift
restrict default nomodify notrap nopeer noquery
#当前节点IP地址
restrict $i nomodify notrap nopeer noquery
restrict 127.0.0.1 
restrict ::1
#集群所在网段的网关（Gateway），子网掩码（Genmask）
restrict $2 mask 255.255.255.0 nomodify notrap
#同步主节点
server $1 
Fudge $1 stratum 10
includefile /etc/ntp/crypto/pw
keys /etc/ntp/keys
disable monitor
EOF"
fi
done 

}

#每台机器启动时间同步服务器
function ntpdStart() {
for i in ${!map[@]} 
do 
echo ===================$i===================
ssh root@$i "systemctl start ntpd \
&& systemctl enable ntpd \
&& ntpdate -u 0.cn.pool.ntp.org \
&& hwclock --systohc \
&& date"

done 

}

#在主节点搭建本地yum源
function yumBuild(){
yum -y install httpd createrepo \
&& systemctl start httpd \
&& systemctl enable httpd \
&& cd /root/cloudera/cloudera-manager/ \
&& createrepo . \
&& mv /root/cloudera/cloudera-manager/ /var/www/html/
}

#在主节点安装jdk
function jdkInstall() {
cd /var/www/html/cloudera-manager/;rpm -ivh oracle-j2sdk1.8-1.8.0+update181-1.x86_64.rpm
}

#在主节点安装mysql 
function mysqlInstall() {
yum -y remove mariadb-libs  #卸载自带的

cd /root/cloudera/mysql/;tar -xvf mysql-5.7.27-1.el7.x86_64.rpm-bundle.tar

yum install -y libaio \
&& rpm -ivh mysql-community-common-5.7.27-1.el7.x86_64.rpm \
&& rpm -ivh mysql-community-libs-5.7.27-1.el7.x86_64.rpm \
&& rpm -ivh mysql-community-client-5.7.27-1.el7.x86_64.rpm \
&& rpm -ivh mysql-community-server-5.7.27-1.el7.x86_64.rpm \
&& rpm -ivh mysql-community-libs-compat-5.7.27-1.el7.x86_64.rpm

#配置my.cnf
echo character-set-server=utf8 >> /etc/my.cnf

}

#创建授权sql
function sqlAuth() {

(
cat <<EOF
set password for root@localhost = password('123456Aa.');
grant all privileges on *.* to 'root'@'%' identified by '123456Aa.';
flush privileges;
CREATE DATABASE scm DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE DATABASE amon DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE DATABASE rman DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE DATABASE hue DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE DATABASE metastore DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE DATABASE sentry DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE DATABASE nav DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE DATABASE navms DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE DATABASE oozie DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
GRANT ALL ON scm.* TO 'scm'@'%' IDENTIFIED BY '123456Aa.';
GRANT ALL ON amon.* TO 'amon'@'%' IDENTIFIED BY '123456Aa.';
GRANT ALL ON rman.* TO 'rman'@'%' IDENTIFIED BY '123456Aa.';
GRANT ALL ON hue.* TO 'hue'@'%' IDENTIFIED BY '123456Aa.';
GRANT ALL ON metastore.* TO 'hive'@'%' IDENTIFIED BY '123456Aa.';
GRANT ALL ON sentry.* TO 'sentry'@'%' IDENTIFIED BY '123456Aa.';
GRANT ALL ON nav.* TO 'nav'@'%' IDENTIFIED BY '123456Aa.';
GRANT ALL ON navms.* TO 'navms'@'%' IDENTIFIED BY '123456Aa.';
GRANT ALL ON oozie.* TO 'oozie'@'%' IDENTIFIED BY '123456Aa.';
SHOW DATABASES;
EOF
) > /root/c.sql
}

#执行sql
function getPswAndAction() {

#获取msyql初始化密码
psw=`systemctl enable mysqld && systemctl start mysqld && grep password /var/log/mysqld.log | sed 's/.*\(............\)$/\1/' | head -n 1`

echo ++++++++++++mysql密码+++++++++++
echo =========== ${psw} =============
echo ++++++++++++++++++++++++++++++++
sleep 10s

#注意：脚本命令修改mysql密码必须指定--connect-expired-password参数
/usr/bin/mysql -uroot -p${psw} --connect-expired-password -e 'source /root/c.sql'

}


#配置mysql 驱动
function addDriver() {
mkdir -p /usr/share/java/ \
&& cd /root/cloudera/mysql-jdbc/;tar -zxvf mysql-connector-java-5.1.47.tar.gz \
&& cp /root/cloudera/mysql-jdbc/mysql-connector-java-5.1.47/mysql-connector-java-5.1.47-bin.jar /usr/share/java/mysql-connector-java.jar
}


#安装Cloudera Manager
function cmInstall() {
#主机配置本地yum源
(
cat <<EOF
[cloudera-manager]
name=Cloudera Manager 6.3.0
baseurl=http://$1/cloudera-manager/
gpgcheck=0
enabled=1
EOF
) >> /etc/yum.repos.d/cloudera-manager.repo \
&& yum clean all \
&& yum makecache 

echo 主机配置本地yum源 ok
#安装Cloudera Manager
yum install -y cloudera-manager-daemons cloudera-manager-agent cloudera-manager-server
echo 安装Cloudera Manager  ok


#配置本地Parcel存储库
mv /root/cloudera/parcel/* /opt/cloudera/parcel-repo
cd /opt/cloudera/parcel-repo
sha1sum CDH-6.3.0-1.cdh6.3.0.p0.1279813-el7.parcel | awk '{ print $1 }' > CDH-6.3.0-1.cdh6.3.0.p0.1279813-el7.parcel.sha
chown -R cloudera-scm:cloudera-scm /opt/cloudera/parcel-repo/*
echo 配置本地Parcel存储库 ok

#初始化scm库
/opt/cloudera/cm/schema/scm_prepare_database.sh mysql scm scm 123456Aa.
echo 初始化scm库 ok
sleep 5s
#启动CM
echo 启动cm
# systemctl start cloudera-scm-server \
# && sleep 2 \
# && tail -f /var/log/cloudera-scm-server/cloudera-scm-server.log | grep "INFO WebServerImpl:com.cloudera.server.cmf.WebServerImpl: Started Jetty server"
systemctl start cloudera-scm-server

}

echo start -----
starttime=`date +'%Y-%m-%d %H:%M:%S'`
#setHostname
echo hostname 设置完成
#hostsAdd
echo host配置完成
netWorkAdd
echo echo network 配置完成
fireClose
echo 防火墙关闭
selinuxClose
echo selinux关闭
ntpConfig $master $getway
echo ntp 配置完毕
ntpdStart
echo ntp 启动完毕
yumBuild
echo yum 配置完毕
jdkInstall
echo jdk 安装完毕
mysqlInstall
echo mysql 安装完毕
sqlAuth
echo sql语句设置完毕
getPswAndAction
echo 改密码并且执行sql完毕
addDriver
echo 添加msyql驱动完毕
cmInstall ${master}
endtime=`date +'%Y-%m-%d %H:%M:%S'`
echo end ------

start_seconds=$(date --date="$starttime" +%s);
end_seconds=$(date --date="$endtime" +%s);
echo "本次运行时间： "$((end_seconds-start_seconds))"s"






