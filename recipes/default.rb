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
include_recipe 'trac'

package "python-software-properties" do
  action :install
end

apt_repository 'python-archive' do
  uri        'http://ppa.launchpad.net/fkrull/deadsnakes/ubuntu/'
  distribution node['lsb']['codename']
  components   ['main']
  keyserver    'keyserver.ubuntu.com'
  key          'C300EE8C'
end

package "python2.6" do
  action :install
  options "--force-yes"
end

package "python2.6-dev" do
  action :install
  options "--force-yes"
end

#execute "python-alternatives" do
#  command "update-alternatives --install /usr/bin/python python /usr/bin/python2.7 15"
#  command "update-alternatives --install /usr/bin/python python /usr/bin/python2.6 10"
#end

include_recipe 'python::package'
include_recipe 'python::pip'
include_recipe 'mysql'
include_recipe 'mysql::server'

#python_pip "Babel" do
#  action :upgrade
#end

#python_pip "Trac" do
#  action :upgrade
#end

python_pip "MySQL-python" do
  action :install
  version "1.2.3"
end

package "sqlite3" do
  action :install
end


#execute "trac-environment" do
#    command "trac-admin #{node['trac']['basedir']}/environment upgrade"
#end
