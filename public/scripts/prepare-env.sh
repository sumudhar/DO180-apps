#!/bin/bash

echo "Hello World"
echo "${{ env.TODAY }}"

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
