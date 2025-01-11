#!/bin/sh

echo "Enter the IP or hostname of the remote server:"
read remote_host

echo "Enter the username for the remote server:"
read remote_user

echo "Enter the name of the public key file (must end with .pub) in your ~/.ssh folder:"
read key_file

key_path="$HOME/.ssh/$key_file"

case "$key_file" in
    *.pub) ;;
    *) 
        echo "please specify a public key file ending with .pub."
        exit 1
        ;;
esac

if [ ! -f "$key_path" ]; then
    echo "public key file not found in .ssh directory."
    exit 1
fi

cat $key_path | ssh ${remote_user}@${remote_host} 'mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys'

echo "Public SSH key $key_file has been imported to $remote_host as $remote_user."
