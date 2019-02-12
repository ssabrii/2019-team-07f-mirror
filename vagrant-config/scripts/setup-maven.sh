#!/usr/bin/env bash

echo "Setting up Maven."

# Install maven.
apt-get install -y maven

# If M2_HOME isn't set, set it permanently.
if [[ -z "${M2_HOME}" ]]; then
    echo 'M2_HOME="/usr/share/maven"' >> /etc/environment
    export M2_HOME=/usr/share/maven
fi

# Copy settings file over to Maven 2's home.
cp -f /vagrant/vagrant-config/config-files/maven/settings.xml $M2_HOME/conf/settings.xml
