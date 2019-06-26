user 'random' do
  action :create
  comment 'Random User'
  password 'Reset123!'
end

group 'Administrators' do
  action :modify
  append false
  members ['Administrator','random']
end