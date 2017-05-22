
package 'httpd' do 
  action :install
end

service 'httpd' do 
  action [:enable, :start]
end

cookbook_file '/var/www/html/index.html' do 
  source 'index.html'
  action :create
  mode '0644'
end
