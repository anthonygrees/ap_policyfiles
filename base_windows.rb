# base_windows.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://github.com/opscode/chef-dk/blob/master/POLICYFILE_README.md
# A name that describes what the system you're building with Chef does.

name 'base_windows'

# Where to find external cookbooks:
default_source :chef_server, "https://#{ENV['AUTOMATE_HOSTNAME']}/organizations/#{ENV['CHEF_ORG']}"

# Specify a custom source for a cookbook:
cookbook 'chef-client', '~> 10.2.2'  ## Stage 1 - Base
cookbook 'audit_agr', '~> 2.2.4'   ## Stage 2 - Detect
cookbook 'cis-windows-ms-2016', '~> 0.3.0'  ## Stage 3 - Correct

# run_list: chef-client will run these recipes in the order specified.
# run_list 'chef-client' ## Stage 1 - Base

# run_list 'chef-client', 'audit_agr'  ## Stage 2 - Detect

run_list 'chef-client', 'audit_agr', 'cis-windows-ms-2016'  ## Stage 3
