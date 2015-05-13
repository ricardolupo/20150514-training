file "hello.txt" do
  content "Hello, world!"
  owner "chef"
  group "chef"
  mode "0644"
  action :create
end
