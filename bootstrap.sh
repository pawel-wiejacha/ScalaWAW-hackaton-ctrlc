# setup FS hierarchy
mkdir -p /opt

# Install dev tools: jdk, git etc...
apt-get update
apt-get install -y openjdk-6-jdk git wget

# download sbt binaries
cd /opt
wget https://dl.bintray.com/sbt/native-packages/sbt/0.13.7/sbt-0.13.7.tgz
tar xf sbt-0.13.7.tgz 
rm -rf sbt-0.13.7.tgz 

# download sbt and scalatest sources
cd /shared

git clone https://github.com/pawel-wiejacha/sbt.git        
git clone https://github.com/pawel-wiejacha/scalatest.git

cd /shared/sbt
git checkout 0.13.7

# setup environment variables
grep -q JAVA_HOME ~/.env || { 
    echo 'export JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64' >> ~/.env
    echo 'export PATH=$PATH:/opt/sbt/bin' >> ~/.env
    cat ~/.env >> ~/.bashrc
}

source ~/.env

# build scalatest
cd /shared/scalatest
sbt -mem 6000 compile test package publishLocal
 
# build sbt
cd /shared/sbt
sbt -mem 6000 compile test package publishLocal

