#
# Cookbook Name:: trac-mysql
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "openssl"
include_recipe 'apt'
include_recipe 'python::pip'
include_recipe 'mysql'
include_recipe 'mysql::server'
include_recipe 'trac'

python_pip "Babel" do
  action :upgrade
end

python_pip "Trac" do
  action :upgrade
end

execute "trac-environment" do
    command "trac-admin #{node['trac']['basedir']}/environment upgrade"
end
