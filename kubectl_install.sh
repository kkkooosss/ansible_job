#!/bin/bash

curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.19.6/2021-01-05/bin/linux/amd64/kubectl
openssl sha1 -sha256 kubectl
chmod +x ./kubectl
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin
echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc
mkdir -p ~/.local/bin/kubectl
mv ./kubectl ~/.local/bin/kubectl
echo 'export PATH=$PATH:$HOME/bin/kubectl' >> ~/.bashrc


