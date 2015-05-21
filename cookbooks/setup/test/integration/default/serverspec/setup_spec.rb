require 'spec_helper'

describe 'vim' do
  it 'is awesome' do
    expect(true).to eq true
  end

  it 'is installed' do
    expect(package 'vim-common').to be_installed
  end
end

describe 'nano' do
  it 'is awesome' do
    expect(true).to eq true
  end

  it 'is installed' do
    expect(package 'nano').to be_installed
  end
end

describe 'emacs' do
  it 'is awesome' do
    expect(true).to eq true
  end

  it 'is installed' do
    expect(package 'emacs').to be_installed
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

describe 'git' do
  it 'is awesome' do
    expect(true).to eq true
  end

  it 'is installed' do
    expect(package 'git').to be_installed
  end
end

# same as above, but use a Ruby iterator instead.

%w(vim-common emacs nano git tree).each do |pkg|
  describe pkg do
    it 'is awesome' do
      expect(true).to eq true
    end
    it 'is installed' do
      expect(package "#{pkg}").to be_installed
    end
  end
end

describe '/etc/motd' do
  it 'has the correct content' do
    expect(file '/etc/motd').to contain /Chef Software/
  end
end
