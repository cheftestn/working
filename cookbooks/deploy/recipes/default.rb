#
# Cookbook Name:: deploy
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
service "tomcat6" do 
	action :stop
end

remote_file "/usr/share/tomcat6/webapps/elasticbeanstalk-sampleapp2.war" do
  source "https://elasticbeanstalk-us-east-1.s3.amazonaws.com/resources/elasticbeanstalk-sampleapp2.war"
end

service "tomcat6" do
      action [:start, :enable]
end
