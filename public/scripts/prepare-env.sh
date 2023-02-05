#!/bin/bash

echo "Hello World"
# USER_ENV='np-west'
# ENV_NAME='npwest'
echo "Installing cf usage report"
cf install-plugin -r CF-Community "Usage Report" -f
TODAY_DATE=$(date -u  +'%Y-%m-%d-%H-%M-%S')
echo $TODAY_DATE
echo $USER_ENV,$ENV_NAME
file_base_name="$USER_ENV-bosh-vms-vitals-$TODAY_DATE"
vm_vitals_file_name="$file_base_name.txt"
vm_vital_pay_load="$file_base_name.json"
echo $file_base_name,$vm_vitals_file_name,$vm_vital_pay_load
PAYLOAD_FILE_PATH="$GITHUB_WORKSPACE/generate-bosh-vms-vitals/$USER_ENV/$vm_vital_pay_load"
echo "The PAY load file path is:: $PAYLOAD_FILE_PATH"
sudo mkdir -p  "$GITHUB_WORKSPACE/generate-bosh-vms-vitals/$USER_ENV"
sudo touch "$PAYLOAD_FILE_PATH"
echo "/mnt/isharesafeway/reports/generate-bosh-vms-vitals/$USER_ENV/$TODAY_DATE"
echo "/mnt/isharesafeway/reports/generate-bosh-vms-vitals/$USER_ENV/$TODAY_DATE/$vm_vital_pay_load"
#sudo chown -R $GITHUB_ACTOR:$GITHUB_ACTOR $GITHUB_WORKSPACE/generate-bosh-vms-vitals/'
export $PAYLOAD_FILE_PATH
sh  ./public/scripts/generate-bosh-vms-vitals.sh
sudo find "/mnt/isharesafeway/reports/generate-bosh-vms-vitals/$USER_ENV/" -type d -name '*-*-*-*-*-*' -mtime +30 -print0 | xargs -0 -I {} rm -rf {} \\;
# sudo mkdir -p "/mnt/isharesafeway/reports/generate-bosh-vms-vitals/$USER_ENV/$TODAY_DATE"
# sudo cp ${PAYLOAD_FILE_PATH} "/mnt/isharesafeway/reports/generate-bosh-vms-vitals/$USER_ENV/$TODAY_DATE/$vm_vital_pay_load"
