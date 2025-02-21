#!/bin/bash
set -e

# Ensure /usr/local/tomcat/webapps exists
mkdir -p /usr/local/tomcat/webapps

# Copy the WAR file if it doesn't already exist
if [ ! -f "/usr/local/tomcat/webapps/ROOT.war" ]; then
    echo "Deploying ROOT.war..."
    cp /usr/local/tomcat/ROOT.war /usr/local/tomcat/webapps/ROOT.war
fi

# Start Tomcat
exec /usr/local/tomcat/bin/catalina.sh run
