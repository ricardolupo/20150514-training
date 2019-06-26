#
# Cookbook Name:: audit-demo
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.


include_recipe "#{cookbook_name}::#{node['platform']}-audit"