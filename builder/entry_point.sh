#!/bin/sh

# Set devel password
cat /devel_passwd.txt | chpasswd

# Generate keys
su - devel -c "ssh-keygen -t rsa -f ~/.ssh/id_rsa -q -N \"\""

# Start sshd service
service ssh start

exec "$@"