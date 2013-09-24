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
