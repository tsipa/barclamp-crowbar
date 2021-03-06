# Copyright 2011, Dell 
# 
# Licensed under the Apache License, Version 2.0 (the "License"); 
# you may not use this file except in compliance with the License. 
# You may obtain a copy of the License at 
# 
#  http://www.apache.org/licenses/LICENSE-2.0 
# 
# Unless required by applicable law or agreed to in writing, software 
# distributed under the License is distributed on an "AS IS" BASIS, 
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
# See the License for the specific language governing permissions and 
# limitations under the License. 
# 
# Author: RobHirschfeld 
# 
# Settings specified here will take precedence over those in config/environment.rb

# In the development environment your application's code is reloaded on
# every request.  This slows down response time but is perfect for development
# since you don't have to restart the webserver when you make code changes.
Crowbar::Application.configure do

config.cache_classes = false

# Log error messages when you accidentally call methods on nil.
config.whiny_nils = true

# Show full error reports and disable caching
#config.action_controller.consider_all_requests_local = true
#config.action_view.debug_rjs                         = true
config.action_controller.perform_caching             = false

# Disable request forgery protection in test environment
# GREG: HACK FOR NOW!
config.action_controller.allow_forgery_protection    = false

# Don't care if the mailer can't send
config.action_mailer.raise_delivery_errors = false

config.log_level = :debug

CHEF_CLIENT_KEY = "/opt/dell/crowbar_framework/config/client.pem"
CHEF_NODE_NAME ="crowbar"
CHEF_SERVER_URL = "http://192.168.124.10:4000"
CROWBAR_VERSION = "Development"

DISABLE_CHEF=true

end
