#!/bin/bash -x
cp rke2-images.linux-amd64.tar /var/lib/rancher/rke2/agent/images/
chmod +x rke2
cp rke2 /usr/local/bin
