#!/bin/bash

echo "Enter the type of encryption (e.g., rsa, ecdsa, ed25519):"
read encryption

if [ -z "$encryption" ]; then
    echo "you need to specify an encryption type."
    exit 1
fi

echo "Enter the desired name for the key (leave blank for default):"
read key_label

key_dir="$HOME/.ssh"
key_name="${key_dir}/id_${encryption}"

if [ ! -z "$key_label" ]; then
    key_name="${key_dir}/${key_label}"
fi

if [ ! -d "$key_dir" ]; then
    mkdir -p "$key_dir"
fi

ssh-keygen -t $encryption -f $key_name

echo "SSH key has been generated and saved to $key_name"
