#!/bin/bash

export AUTOMATE_HOSTNAME='anthony-a2.chef-demo.com'
export CHEF_ORG='reesyorg'

policies=('base_linux.rb' 'base_windows.rb' 'base_windows2012.rb' 'linux_patch.rb' 'patching.rb')

for policy in ${policies[@]}; do
    chef install $policy
    chef push development $policy
done
