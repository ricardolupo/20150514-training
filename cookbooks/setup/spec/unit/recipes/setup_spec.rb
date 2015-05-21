#
# Cookbook Name:: setup
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'setup::setup' do

  let(:chef_run) { ChefSpec::ServerRunner.new.converge(described_recipe) }
  it 'installs a package nano' do
    expect(chef_run).to install_package('nano')
  end

  it 'installs a package emacs' do
    expect(chef_run).to install_package('emacs')
  end

  it 'installs a package tree' do
    expect(chef_run).to install_package('tree')
  end

  it 'installs a package vim' do
    expect(chef_run).to install_package('vim')
  end

  it 'installs a package git' do
    expect(chef_run).to install_package('vim')
  end

  # same as above, but using a Ruby iterator to do unit test

  %w(emacs nano vim tree git).each do |pkg|
    it "installs a package #{pkg}" do
      expect(chef_run).to install_package(pkg)
    end
  end

  it 'creates a file called /etc/motd' do
    expect(chef_run).to create_file('/etc/motd')
  end

end
