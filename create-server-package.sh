#!/bin/bash -x
mkdir rke2-deploy-package
echo '###### Downloading RKE2 files ######'
wget 'https://github.com/rancher/rke2/releases/download/v1.18.10%2Brke2r1/rke2.linux-amd64'
wget 'https://github.com/rancher/rke2/releases/download/v1.18.10%2Brke2r1/rke2-images.linux-amd64.tar.gz'
echo '###### Unzipping images ############'
gunzip rke2-images.linux-amd64.tar.gz && mv rke2-images.linux-amd64.tar rke2-deploy-package/ || echo 'obtain rke2-images.linux-amd64.tar.gz from https://github.com/rancher/rke2/releases'
mv rke2.linux-amd64 rke2 && mv rke2 rke2-deploy-package/ || echo 'obtain rke2-linux-amd64 from https://github.com/rancher/rke2/releases'
curl -sfL https://get.rke2.io > rke2-deploy-package/rke2-install.sh
cp deploy-local-server.sh rke2-deploy-package/
tar -cvzf rke2-deploy-package.tar.gz rke2-deploy-package
rm -rf rke2-deploy-package
echo '###### Done ########################'

