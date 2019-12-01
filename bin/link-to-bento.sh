#!/usr/bin/env bash

/bin/ln -f scripts/provision.sh ../bento/packer_templates/ubuntu/scripts/slimstead.sh
/bin/ln -f http/preseed.cfg ../bento/packer_templates/ubuntu/http
/bin/ln -f http/preseed-hyperv.cfg ../bento/packer_templates/ubuntu/http

sed -i '' 's/scripts\/cleanup.sh/scripts\/slimstead.sh/' ../bento/packer_templates/ubuntu/ubuntu-18.04-amd64.json
sed -i '' 's/"cpus": "1"/"cpus": "2"/' ../bento/packer_templates/ubuntu/ubuntu-18.04-amd64.json
sed -i '' 's/"memory": "1024"/"memory": "2048"/' ../bento/packer_templates/ubuntu/ubuntu-18.04-amd64.json
sed -i '' 's/"disk_size": "65536"/"disk_size": "131072"/' ../bento/packer_templates/ubuntu/ubuntu-18.04-amd64.json
sed -i '' 's/"..\/_common\/motd.sh",//' ../bento/packer_templates/ubuntu/ubuntu-18.04-amd64.json
