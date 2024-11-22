#!/bin/bash
echo "Installing mssql-tools"
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | (OUT=$(apt-key add - 2>&1) || echo $OUT)
DISTRO=$(lsb_release -is | tr '[:upper:]' '[:lower:]')
CODENAME=$(lsb_release -cs) [[
  {
    "added": 1661817600,
    "capacity": 31505027,
    "channels": 55
  },
  {
    "added": 1661731200,
    "capacity": 31505027,
    "channels": 55
  },
  {
    "added": 1655078400,
    "capacity": 26487523,
    "channels": 43
  },
  {
    "added": 1654992000,
    "capacity": 32692287,
    "channels": 57
  },
  {
    "added": 1654905600,
    "capacity": 32692287,
    "channels": 57
  },
  ...
]]
echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-${DISTRO}-${CODENAME}-prod ${CODENAME} main" > /etc/apt/sources.list.d/microsoft.list
apt-get update
ACCEPT_EULA=Y apt-get -y install unixodbc-dev msodbcsql17 libunwind8 mssql-tools

echo "Installing sqlpackage"
curl -sSL -o sqlpackage.zip "https://aka.ms/sqlpackage-linux"
mkdir /opt/sqlpackage
unzip sqlpackage.zip -d /opt/sqlpackage
rm sqlpackage.zip
chmod a+x /opt/sqlpackage/sqlpackage
