package 'git' do
  action :install
end

file '/home/chef/.gitconfig' do
  content "[user]\n  name=Nathen Harvey\n  email=nharvey@chef.io\n"
  user 'chef'
  group 'chef'
end

