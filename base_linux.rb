# base_linux.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://github.com/opscode/chef-dk/blob/master/POLICYFILE_README.md
# A name that describes what the system you're building with Chef does.

name 'base_linux'

# Where to find external cookbooks:
default_source :chef_server, "https://#{ENV['AUTOMATE_HOSTNAME']}/organizations/#{ENV['CHEF_ORG']}"

# Specify a custom source for a cookbook:
cookbook 'chef-client'
# cookbook 'chef-client', 'audit-agr'

# run_list: chef-client will run these recipes in the order specified.
run_list 'chef-client'

# run_list 'chef-client', 'audit_agr'  ## Stage 2
