['vim', 'emacs', 'nano', 'tree', 'git'].each do |pkg|
  package pkg do
    action :install
  end
end

file "/etc/motd" do
  content "Hello! This file is property of Chef Software, Inc.\n"
end
