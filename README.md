# rke2-airgap-deploy

Scripts for deploying an RKE2 cluster in an air-gap environment

Steps:
- on an online machine, run the create-server-package.sh script, it will produce package file named rke2-deploy-package.tar.gz
- copy the package file to home folders on all cluster nodes
