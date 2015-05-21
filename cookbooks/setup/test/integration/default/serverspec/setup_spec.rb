require 'spec_helper'

describe 'vim package' do
  it "is awesome" do
    expect(true).to eq true
  end

  it "is installed" do
      expect(package "vim-common").to be_installed
    end
end

describe 'nano' do
  it "is awesome" do
    expect(true).to eq true
  end

  it "is installed" do
    expect(package "nano").to be_installed
  end
end

describe 'emacs' do
  it "is awesome" do
    expect(true).to eq true
  end

  it "is installed" do
    expect(package "emacs").to be_installed
  end
end

describe 'tree' do
  it 'is awesome' do
    expect(true).to eq true
  end

  it 'is installed' do
    expect(package 'tree').to be_installed
  end
end
