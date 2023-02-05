#!/bin/bash

echo "Hello World"
# USER_ENV='np-west'
# ENV_NAME='npwest'
TODAY_DATE=$(date -u  +'%Y-%m-%d-%H-%M-%S')
echo $TODAY_DATE
echo $USER_ENV,$ENV_NAME
file_base_name="$USER_ENV-bosh-vms-vitals-$TODAY_DATE"
vm_vitals_file_name="$file_base_name.txt"
vm_vital_pay_load="$file_base_name.json"
echo $file_base_name,$vm_vitals_file_name,$vm_vital_pay_load
PAYLOAD_FILE_PATH="$GITHUB_WORKSPACE/generate-bosh-vms-vitals/$USER_ENV/$vm_vital_pay_load"
echo "The PAY load file path is:: $PAYLOAD_FILE_PATH"

# - name: set file path
#         run: |
#            file_base_name="np-west-bosh-vms-vitals-$(date -u  +'%Y-%m-%d-%H-%M-%S')"
#            file_path=${{ env.USER_ENV }}-bosh-vms-vitals-${{ env.TODAY }}
#            echo $file_base_name, $file_path
#            echo ${{ env.TODAY }}
#            echo ${{ env.USER_ENV }}
#            echo "vmsvitalsfilename=$file_base_name.txt" >> $GITHUB_ENV
#            echo "vmsvitalspayload=$file_base_name.json" >> $GITHUB_ENV
#            pay_load="${{ github.workspace }}/generate-bosh-vms-vitals/${{ env.USER_ENV }}/$vmsvitalspayload"
#            echo $pay_load
#            echo "pay_load=$pay_load" >> $GITHUB_ENV
#       - name: Print file path
#         run: echo $file_path
#       - name: Print all file path details
#         run: echo $pay_load, $vmsvitalspayload, $vmsvitalsfilename
#       - name: Create project folders
#         run: |
#           sudo mkdir -p  "$GITHUB_WORKSPACE/generate-bosh-vms-vitals/${{ env.USER_ENV }}"
#           sudo touch "$pay_load"
#           #sudo chown -R $GITHUB_ACTOR:$GITHUB_ACTOR $GITHUB_WORKSPACE/generate-bosh-vms-vitals/'
#           chmod +x ./public/scripts/generate-bosh-vms-vitals.sh
#           sudo find /mnt/isharesafeway/reports/generate-bosh-vms-vitals/${{ env.USER_ENV }}/ -type d -name '*-*-*-*-*-*' -mtime +30 -print0 | xargs -0 -I {} rm -rf {} \\;
#           sudo mkdir -p /mnt/isharesafeway/reports/generate-bosh-vms-vitals/${{ env.USER_ENV }}/${{ env.TODAY }}
#           sudo cp ${pay_load} /mnt/isharesafeway/reports/generate-bosh-vms-vitals/${{ env.USER_ENV }}/${{ env.TODAY }}/${vmsvitalspayload}
#
