#
# Cookbook:: sssd_vault_test
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#
include_recipe 'sssd_ldap::default'

chef_gem 'vault' do
  action :nothing
end.run_action(:install)

require 'vault'

read_vault 'Read secret at secret/data/my-app' do
  path 'secret/data/my-app'
  address 'http://127.0.0.1:8200'
  token 'your-token-here'
  role_name 'chef-role'
  notifies :create, 'template[/etc/sssd/sssd.conf]', :immediately
end

edit_resource(:template, '/etc/sssd/sssd.conf') do
  source 'sssd.erb'
  cookbook 'sssd_vault_test'
  ## If I add the below then I get a error no method found for "data"
  #  variables lazy {
  #    {
  #      ldap_default_bind_dn: node.run_state['secret/data/my-app'].data[:data][:username],
  #      ldap_default_authtok: node.run_state['secret/data/my-app'].data[:data][:password],
  #    }
  #  }
end

template '/etc/sssd/sssd.conf' do
  source 'sssd.erb'
  variables lazy {
    {
    ldap_default_bind_dn: node.run_state['secret/data/my-app'].data[:data][:username],
    ldap_default_authtok: node.run_state['secret/data/my-app'].data[:data][:password],
    }
  }
end
