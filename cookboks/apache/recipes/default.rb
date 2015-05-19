#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
  mode '0644'
  owner 'root'
  group 'root'
end

service 'httpd' do
  action [ :start, :enable ]
end
