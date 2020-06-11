#!/bin/bash

policies=('base_linux.rb' 'base_windows.rb' 'base_windows2012.rb' 'linux_patch.rb')

for policy in ${policies[@]}; do
    chef install $policy
    chef push development $policy
done
