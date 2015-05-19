package 'git' do
  action :install
end

file '/home/chef/.gitconfig' do
  content "[user]\n  name=Ricardo Lupo\n  email=rlupo@chef.io\n"
  user 'chef'
  group 'chef'
end
