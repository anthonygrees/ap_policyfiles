# linux_patch.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://github.com/opscode/chef-dk/blob/master/POLICYFILE_README.md
# A name that describes what the system you're building with Chef does.

name 'linux_patch'

# Where to find external cookbooks:
default_source :chef_server, "https://#{ENV['AUTOMATE_HOSTNAME']}/organizations/#{ENV['CHEF_ORG']}"

# Specify a custom source for a cookbook:
cookbook 'chef-client', '~> 10.2.2' ## Stage 1
# cookbook 'audit_patch', '~> 0.1.0' ## Stage 1 - Check Patch Level with InSpec
# cookbook 'ap_ubuntu_patch', '~> 0.1.0'  ## Stage 2 - Apply Patch with Chef

# run_list: chef-client will run these recipes in the order specified.

# run_list 'chef-client', 'audit_patch'  ## Stage 1

# run_list 'chef-client', 'audit_patch', 'ap_ubuntu_patch'  ## Stage 2
