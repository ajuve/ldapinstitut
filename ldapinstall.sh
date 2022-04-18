#!/bin/bash

apt update
apt install ldap-utils slapd -y
dpkg-reconfigure slapd
