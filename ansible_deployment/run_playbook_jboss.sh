#!/bin/sh


ansible-playbook -i inventory.ini deploy_jboss_war.yml  

export JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto.x86_64
export PATH=$PATH:$JAVA_HOME/bin

export JBOSS_HOME=/opt/jboss
export PATH=$PATH:$JBOSS_HOME/bin

/opt/jboss/bin/standalone.sh -b 0.0.0.0 &


